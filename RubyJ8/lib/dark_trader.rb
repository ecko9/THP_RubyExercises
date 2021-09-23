require 'nokogiri'
require 'pry'
require 'open-uri'
require 'watir'

def crypt_name
  doc = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
#  Watir::Browser.new :edge, url: "https://coinmarketcap.com/all/views/all/"
  tableau_name = []
  tableau_price = []
  hash = Hash[]

	doc.xpath('  //*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[2]/div/a[2]').each do |node|
	  tableau_name.push(node.text)
	end

  doc.xpath('  //*[@id="__next"]/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr/td[5]/div/a').each do |node|
	  tableau_price.push(node.text)
	end
  hash = tableau_name.zip(tableau_price).map {|k, v| {k => v.delete("$,").to_f}}
  return hash
end

def perform
  crypt_name
end

perform