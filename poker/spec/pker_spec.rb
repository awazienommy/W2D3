require 'card'
require 'rspec'

describe Card do

  describe "#initialize" do
    context "When given valid parameters" do
      it "initializes the card with suit and value" do
        valid = Card.new("diamonds", "jack")
        expect(valid.suit).to eq("diamonds")
        expect(valid.value).to eq("jack")
      end
    end
  end

  describe '#valid_card?' do 
    context "When given invalid parameters" do
      it "raises an error" do
         valid = Card.new("diamonds", "jack")
        expect {valid.valid_card?}.to raise_error("invalid suit")
        expect {valid.valid_card?}.to raise_error("invalid value")
      end
    end
  end

end