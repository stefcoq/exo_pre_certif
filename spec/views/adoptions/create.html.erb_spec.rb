require 'rails_helper'

RSpec.describe "adoptions/create.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"
end

require 'rails_helper'

RSpec.describe "adoptions/create.html.erb", type: :view do
  before(:each) do
    assign(:adoption, FactoryBot.build(:adoption))
  end

  it "renders new tree form" do
    render

    assert_select "form[action=?][method=?]", tree_new_adoption_path, "post" do
    end
  end
end
