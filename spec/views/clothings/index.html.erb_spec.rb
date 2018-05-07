require 'rails_helper'

RSpec.describe "clothings/index", type: :view do
  before(:each) do
    assign(:clothings, [
      Clothing.create!(
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :clothing_type => nil,
        :gender => nil,
        :clothing_size => nil,
        :item_price => 2,
        :postage_price => 3,
        :image_data => "Image Data"
      ),
      Clothing.create!(
        :user => nil,
        :title => "Title",
        :description => "MyText",
        :clothing_type => nil,
        :gender => nil,
        :clothing_size => nil,
        :item_price => 2,
        :postage_price => 3,
        :image_data => "Image Data"
      )
    ])
  end

  it "renders a list of clothings" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Image Data".to_s, :count => 2
  end
end
