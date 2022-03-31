require 'rails_helper'

RSpec.describe Adoption, type: :model do
  it 'should persist adoption' do
    adoption = FactoryBot.build(:adoption)
    expect(adoption).to be_valid
  end
end
