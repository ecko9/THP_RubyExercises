require_relative '../lib/caesar_cipher.rb'

describe "the caesar_cipher method" do

  it "should return La clé doit etre comprise entre 1 et 26 if key isn't" do
    expect(caesar_cipher("blabla", -4)).to eq("La clé doit etre comprise entre 1 et 26")
    expect(caesar_cipher("blabla", 0)).to eq("La clé doit etre comprise entre 1 et 26")
    expect(caesar_cipher("blabla", 54)).to eq("La clé doit etre comprise entre 1 et 26")
  end

  it "should return a string without changing special caracteres" do
    expect(caesar_cipher("!!!  ?;/", 4)).to eq("!!!  ?;/")
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end
end