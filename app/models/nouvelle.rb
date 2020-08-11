class Nouvelle < ApplicationRecord
    validates :name, presence: true
    validates :texte, presence: true
end
