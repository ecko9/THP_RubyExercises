require_relative '../lib/word_counter.rb'

describe "the scan method" do

  
  it "should return nb fois ou un mot existe dans une phrase" do
    expect(scan("low", "Hellow low nowb")).to eq(2)
    expect(scan("low", "Hello low nowb")).to eq(1)
  end
end

describe "word_counter" do
 
    it "should return hash avec les stats des scans avec plus dune fois le mot" do
      expect(word_counter("below", dictionnary)).to eq({"below"=>1, "low"=>1})
    end
  
end