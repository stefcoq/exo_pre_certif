require 'rails_helper'

RSpec.describe "trees/index", type: :view do
  before(:each) do
    assign(:trees, [
      FactoryBot.create(:tree),
      FactoryBot.create(:tree)
    ])
  end

  it "renders a list of trees" do
    render
  end
end
