# frozen_string_literal: true

class Actuality < ApplicationRecord
  validates :name, presence: true
  validates :texte, presence: true
end
