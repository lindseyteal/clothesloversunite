require 'rails_helper'

RSpec.describe "clothings/show", type: :view do
  before(:each) do
    @clothing = assign(:clothing, Clothing.create!(
      :user => nil,
      :title => "Title",
      :description => "MyText",
      :clothing_type => nil,
      :gender => nil,
      :clothing_size => nil,
      :item_price => 2,
      :postage_price => 3,
      :image_data => "Image Data"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Image Data/)
  end
end
