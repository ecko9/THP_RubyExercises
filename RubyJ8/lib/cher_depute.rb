require 'nokogiri'
require 'pry'
require 'open-uri'
require 'watir'

def cher_depute
  tableau_deputes = []
  tableau_mails = []
  doc = Nokogiri::HTML(URI.open("https://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
  doc.css('#deputes-list > div > ul > li > a').each do |lien|
    tableau_deputes.push(lien.text)
    link_name = "https://www2.assemblee-nationale.fr/" + lien[@class="href"][1, 10000]
    doc2 = Nokogiri::HTML(URI.open(link_name))
    doc2.css('#haut-contenu-page > article > div.contenu-principal.en-direct-commission.clearfix > div > dl > dd:nth-child(8) > ul > li:nth-child(2) > a').each do |mail|
    tableau_mails.push(mail.text)
    end    
  end

  tableau_prename = []
  tableau_name = []
  tableau_deputes.length.times do |i|
    tableau_prename.push(tableau_deputes[i].split[1])
    tableau_name.push(tableau_deputes[i].split[2, 1000].join(" "))
  end
  
  hash = [
{ 
    "first_name" => tableau_prename,
    "last_name" => tableau_name,
    "email" => tableau_mails
  }
]

  return hash

end

cher_depute
