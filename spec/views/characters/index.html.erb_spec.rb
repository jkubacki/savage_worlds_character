require 'rails_helper'

RSpec.describe "characters/index", :type => :view do
  before(:each) do
    assign(:characters, [
      Character.create!(
        :name => "Name",
        :description => "MyText",
        :exp => 1,
        :bennies => 2,
        :money => 3,
        :ini_cards => 4,
        :card => nil,
        :card => nil,
        :race => nil,
        :rank => nil,
        :character_type => nil
      ),
      Character.create!(
        :name => "Name",
        :description => "MyText",
        :exp => 1,
        :bennies => 2,
        :money => 3,
        :ini_cards => 4,
        :card => nil,
        :card => nil,
        :race => nil,
        :rank => nil,
        :character_type => nil
      )
    ])
  end

  it "renders a list of characters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
