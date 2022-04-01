require 'rails_helper'

RSpec.describe "trees/index", type: :view do
  before(:each) do
    assign(:trees, [
      Tree.create!(),
      Tree.create!()
    ])
  end

  it "renders a list of trees" do
    render
  end
end
