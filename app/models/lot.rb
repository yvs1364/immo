# frozen_string_literal: true

class Lot < ApplicationRecord
  scope :min_price, ->(min) { where('cast(price as text) > ?', min) }
  scope :max_price, ->(max) { where('cast(price as text) < ?', max) }
  validates :name, presence: true
  validates :metre, presence: true
  validates :city, presence: true
  validates :price, presence: true
  validates :ref, presence: true
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
