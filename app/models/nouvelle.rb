# frozen_string_literal: true

class Nouvelle < ApplicationRecord
  validates :name, presence: true
  validates :texte, presence: true
end
