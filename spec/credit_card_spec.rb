require 'rspec'
require "./lib/credit_card.rb"

RSpec.describe CreditCard do

  it "exists" do
    credit_card = CreditCard.new("5541808923795240", 15000)
    expect(credit_card).to be_a CreditCard
  end

  it "has a number" do
    credit_card = CreditCard.new("5541808923795240", 15000)
    expect(credit_card.card_number.to_i).to be_a Integer 
  end

  it "has 16 digits" do
    credit_card = CreditCard.new("5541808923795240", 15000)
    expect(credit_card.card_number.length).to eq 16
  end 

  it "has a limit" do
    credit_card = CreditCard.new("5541808923795240", 15000)
    expect(credit_card.limit).to eq 15000
  end

  it "knows if a credit card is invalid" do
    credit_card = CreditCard.new("5541801923795240", 15000)
    expect(credit_card.is_valid?).to eq false
    credit_card = CreditCard.new("5541808923795240", 15000)
    expect(credit_card.is_valid?).to eq true    
  end

end