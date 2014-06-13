require 'rails_helper'

RSpec.describe "characters/show", :type => :view do
  before(:each) do
    @character = assign(:character, Character.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
