# frozen_string_literal: true

require 'application_system_test_case'

class CitiesTest < ApplicationSystemTestCase
  setup do
    @city = cities(:one)
  end

  test 'visiting the index' do
    visit cities_url
    assert_selector 'h1', text: 'Cities'
  end

  test 'creating a City' do
    visit cities_url
    click_on 'New City'

    fill_in 'Country', with: @city.country
    fill_in 'Landarea', with: @city.landarea
    fill_in 'Mayor', with: @city.mayor
    fill_in 'Name', with: @city.name
    fill_in 'Population', with: @city.population
    fill_in 'State province', with: @city.state_province
    click_on 'Create City'

    assert_text 'City was successfully created'
    click_on 'Back'
  end

  test 'updating a City' do
    visit cities_url
    click_on 'Edit', match: :first

    fill_in 'Country', with: @city.country
    fill_in 'Landarea', with: @city.landarea
    fill_in 'Mayor', with: @city.mayor
    fill_in 'Name', with: @city.name
    fill_in 'Population', with: @city.population
    fill_in 'State province', with: @city.state_province
    click_on 'Update City'

    assert_text 'City was successfully updated'
    click_on 'Back'
  end

  test 'destroying a City' do
    visit cities_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'City was successfully destroyed'
  end
end
