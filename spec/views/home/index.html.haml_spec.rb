require 'rails_helper'

RSpec.describe "home/index.html.haml", type: :view do
  describe 'Get #index'do
  before(:each) do
    render
  end

    it 'renders the page-rspec test passing case' do
      expect(rendered).to match /Hello/
    end
    it 'renders the page-rspec test failing case' do
      expect(rendered).to_not match /Helloo/
    end
    it "renders the page capybara passing case" do
      expect(rendered).to have_css('h1', text: 'Hello')
    end
    it 'renders the page capybara failing case' do
      expect(rendered).not_to have_css('h1', text: 'helloo')
    end
    it 'has a link to name' do
      expect(rendered).to have_link('hello', href: 'google.com/hello')
    end

  end
end
