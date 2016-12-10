require_relative './spec_helper'
require_relative '../cipher.rb'


describe "#encrypt" do 
  it "converts a single word" do
    expect(encrypt(2, "cat")).to eq("ecv")
    expect(encrypt(7, "code")).to eq("jvkl")
  end

  it "loops around the alphabet if the shift goes beyond z" do
    expect(encrypt(5, "zigzag")).to eq("enlefl")
    expect(encrypt(10, "javascript")).to eq("tkfkcmbszd")
  end

  it "keeps letters capitalized in multiple word phrases" do
    expect(encrypt(4, "Phoenix AZ")).to eq("Tlsirmb ED")
  end
end