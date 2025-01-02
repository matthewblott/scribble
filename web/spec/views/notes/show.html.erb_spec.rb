require 'rails_helper'

RSpec.describe "notes/show", type: :view do
  before(:each) do
    assign(:note, Note.create!(
      text: "Text",
      user: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Text/)
    expect(rendered).to match(//)
  end
end
