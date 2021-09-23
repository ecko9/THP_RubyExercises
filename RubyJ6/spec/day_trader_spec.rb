require_relative '../lib/day_trader.rb'

describe "the benef_max method" do

  
  it "should return le benef maximum entre un nbr du tableau et ceux aux next index" do
    expect(benef_max([17, 3, 6, 9, 15, 8, 6, 1, 10], 5)).to eq(2)
  end
end

describe "day_trader method" do
 
    it "should return Le meilleur jour dachat et meilleur jour de vente" do
      expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([2, 5])
    end
  
end