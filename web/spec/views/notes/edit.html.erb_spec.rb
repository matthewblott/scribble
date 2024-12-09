require 'rails_helper'

RSpec.describe "notes/edit", type: :view do
  let(:note) {
    Note.create!(
      text: "MyString",
      user: nil
    )
  }

  before(:each) do
    assign(:note, note)
  end

  it "renders the edit note form" do
    render

    assert_select "form[action=?][method=?]", note_path(note), "post" do

      assert_select "input[name=?]", "note[text]"

      assert_select "input[name=?]", "note[user_id]"
    end
  end
end
