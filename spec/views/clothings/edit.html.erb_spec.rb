require 'rails_helper'

RSpec.describe "clothings/edit", type: :view do
  before(:each) do
    @clothing = assign(:clothing, Clothing.create!(
      :user => nil,
      :title => "MyString",
      :description => "MyText",
      :clothing_type => nil,
      :gender => nil,
      :clothing_size => nil,
      :item_price => 1,
      :postage_price => 1,
      :image_data => "MyString"
    ))
  end

  it "renders the edit clothing form" do
    render

    assert_select "form[action=?][method=?]", clothing_path(@clothing), "post" do

      assert_select "input[name=?]", "clothing[user_id]"

      assert_select "input[name=?]", "clothing[title]"

      assert_select "textarea[name=?]", "clothing[description]"

      assert_select "input[name=?]", "clothing[clothing_type_id]"

      assert_select "input[name=?]", "clothing[gender_id]"

      assert_select "input[name=?]", "clothing[clothing_size_id]"

      assert_select "input[name=?]", "clothing[item_price]"

      assert_select "input[name=?]", "clothing[postage_price]"

      assert_select "input[name=?]", "clothing[image_data]"
    end
  end
end
