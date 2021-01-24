require 'rails_helper'

RSpec.describe Grape, type: :model do

  it "is not allowed for grape names to be duplicate" do
    g1 = Grape.create(name: 'Carmenere')
    g2 = Grape.create(name: 'Carmenere')
    
    expect(g2).to_not be_valid
  end
  
end
