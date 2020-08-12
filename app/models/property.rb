# frozen_string_literal: true

class Property < ApplicationRecord
  validates :name, presence: true
  validates :room, presence: true
  validates :metre, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :ref, presence: true
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
