class Type < ApplicationRecord
    has_many :markers, dependent: :destroy
    validates :name, uniqueness: true, presence: true
end
