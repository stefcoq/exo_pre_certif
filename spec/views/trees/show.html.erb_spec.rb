require 'rails_helper'

RSpec.describe "trees/show", type: :view do
  before(:each) do
    @tree = assign(:tree, FactoryBot.create(:tree))
  end

  it "renders attributes in <p>" do
    render
  end
end
