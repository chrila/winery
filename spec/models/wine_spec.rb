require 'rails_helper'

RSpec.describe Wine, type: :model do

  it "is not valid without a name" do
    w = Wine.create()
    expect(w).to_not be_valid
  end

  it "is not valid with an empty name" do
    w = Wine.create(name: '')
    expect(w).to_not be_valid
  end

  it "is valid with a name" do
    w = Wine.create(name: 'Carmenere')
    expect(w).to be_valid
  end
  
end
