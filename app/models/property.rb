# frozen_string_literal: true
class Property < ApplicationRecord
    validates :name, presence: true
    validates :room, presence: true
    validates :metre, presence: true
    validates :city, presence: true
    validates :price, presence: true
    validates :ref, presence: true
    geocoded_by :city
end
