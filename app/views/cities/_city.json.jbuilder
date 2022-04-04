# frozen_string_literal: true

json.extract! city, :id, :name, :country, :state_province, :population, :landarea, :mayor, :created_at, :updated_at
json.url city_url(city, format: :json)
