class Artist < ApplicationRecord
    # belongs_to :user
    has_many :artworks, dependent: :destroy
end
