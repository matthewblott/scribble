require 'rails_helper'

RSpec.describe "notes/index", type: :view do
  before(:each) do
    assign(:notes, [
      Note.create!(
        text: "Text",
        user: nil
      ),
      Note.create!(
        text: "Text",
        user: nil
      )
    ])
  end

  it "renders a list of notes" do
    render
    cell_selector = 'div>p'
    assert_select cell_selector, text: Regexp.new("Text".to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
