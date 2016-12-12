require 'spec_helper'

feature "Request JSON", :js do

  describe 'home page' do
    it 'welcomes the user' do
      visit 'http://localhost:4567/'
      # visit '/'
      expect(page).to have_content 'hello world'
    end
  end
end
