require_relative '../lib/dark_trader.rb'


describe "the dark_trader method" do
  it "should return array of hash with https://coinmarketcap.com/all/views/all/ Crypto on key and Price on value" do
    expect(dark_trader).not_to be_nil
  end
end