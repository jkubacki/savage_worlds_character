require 'rails_helper'

RSpec.describe "characters/new", :type => :view do
  before(:each) do
    assign(:character, Character.new(
      :name => "MyString",
      :description => "MyText",
      :exp => 1,
      :bennies => 1,
      :money => 1,
      :ini_cards => 1,
      :card => nil,
      :card => nil,
      :race => nil,
      :rank => nil,
      :character_type => nil
    ))
  end

  it "renders new character form" do
    render

    assert_select "form[action=?][method=?]", characters_path, "post" do

      assert_select "input#character_name[name=?]", "character[name]"

      assert_select "textarea#character_description[name=?]", "character[description]"

      assert_select "input#character_exp[name=?]", "character[exp]"

      assert_select "input#character_bennies[name=?]", "character[bennies]"

      assert_select "input#character_money[name=?]", "character[money]"

      assert_select "input#character_ini_cards[name=?]", "character[ini_cards]"

      assert_select "input#character_card_id[name=?]", "character[card_id]"

      assert_select "input#character_card_id[name=?]", "character[card_id]"

      assert_select "input#character_race_id[name=?]", "character[race_id]"

      assert_select "input#character_rank_id[name=?]", "character[rank_id]"

      assert_select "input#character_character_type_id[name=?]", "character[character_type_id]"
    end
  end
end
