require 'rails_helper'

RSpec.describe "trees/edit", type: :view do
  before(:each) do
    @tree = assign(:tree, FactoryBot.create(:tree))
  end

  it "renders the edit tree form" do
    render

    assert_select "form[action=?][method=?]", tree_path(@tree), "post" do
    end
  end
end
