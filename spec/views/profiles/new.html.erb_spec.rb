require 'rails_helper'

RSpec.describe "profiles/new", type: :view do
  before(:each) do
    assign(:profile, Profile.new(
      :user => nil,
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :suburb => "MyString",
      :postcode => "MyString",
      :state => "MyString",
      :buyer => false,
      :seller => false
    ))
  end

  it "renders new profile form" do
    render

    assert_select "form[action=?][method=?]", profiles_path, "post" do

      assert_select "input[name=?]", "profile[user_id]"

      assert_select "input[name=?]", "profile[first_name]"

      assert_select "input[name=?]", "profile[last_name]"

      assert_select "input[name=?]", "profile[address]"

      assert_select "input[name=?]", "profile[suburb]"

      assert_select "input[name=?]", "profile[postcode]"

      assert_select "input[name=?]", "profile[state]"

      assert_select "input[name=?]", "profile[buyer]"

      assert_select "input[name=?]", "profile[seller]"
    end
  end
end
