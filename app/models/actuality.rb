class Actuality < ApplicationRecord
    validates :name, presence: true
    validates :texte, presence: true
end
