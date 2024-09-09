# frozen_string_literal: true

# location: spec/feature/integration_spec.rb
require 'rails_helper'

RSpec.describe 'Creating a book', type: :feature do
  scenario 'valid inputs' do
    visit new_book_path
    fill_in 'book[title]', with: 'harry potter'
    fill_in 'book[author]', with: 'jk rowling'
    fill_in 'book[price]', with: '20.00'
    fill_in 'book[publish_date]', with: '2000-09-01'
    click_on 'Create Book'
    visit books_path
    expect(page).to have_content('harry potter')
    expect(page).to have_content('jk rowling')
    expect(page).to have_content('20.00')
    expect(page).to have_content('2000-09-01')
  end
end
