require 'rails_helper'

RSpec.describe "profiles/index", type: :view do
  before(:each) do
    assign(:profiles, [
      Profile.create!(
        :user => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :suburb => "Suburb",
        :postcode => "Postcode",
        :state => "State",
        :buyer => false,
        :seller => false
      ),
      Profile.create!(
        :user => nil,
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :suburb => "Suburb",
        :postcode => "Postcode",
        :state => "State",
        :buyer => false,
        :seller => false
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Suburb".to_s, :count => 2
    assert_select "tr>td", :text => "Postcode".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
