require 'spec_helper'
# require 'database_cleaner'
require_relative '../app/app'


feature 'adding Chits' do
	
scenario 'I can add chits from the peeps page' do
visit '/peep'
expect(page.status_code).to eq 200
fill_in('boop', :with => "Boring opinions of others")
click_button "submit"

within 'ul#peeps' do
	expect(page).to have_content "Boring opinions of others"
		end
	end	