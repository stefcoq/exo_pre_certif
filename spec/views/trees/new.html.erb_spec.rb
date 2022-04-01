require 'rails_helper'

RSpec.describe "trees/new", type: :view do
  before(:each) do
    assign(:tree, FactoryBot.build(:tree))
  end

  it "renders new tree form" do
    render

    assert_select "form[action=?][method=?]", trees_path, "post" do
    end
  end
end
