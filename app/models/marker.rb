class Marker < ApplicationRecord
    belongs_to :category
    belongs_to :type
    validates :name, :url, :type_id, :category_id, presence: true
    validates :name, :url, uniqueness: true
end
