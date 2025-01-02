require 'rails_helper'

RSpec.describe "notes/new", type: :view do
  before(:each) do
    assign(:note, Note.new(
      text: "MyString",
      user: nil
    ))
  end

  it "renders new note form" do
    render

    assert_select "form[action=?][method=?]", notes_path, "post" do

      assert_select "input[name=?]", "note[text]"

      assert_select "input[name=?]", "note[user_id]"
    end
  end
end
