# frozen_string_literal: true

class Property < ApplicationRecord
    include PgSearch::Model
    pg_search_scope :search_by_title_and_syllabus,
      against: [ :name, :syllabus ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
