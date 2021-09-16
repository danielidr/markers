class Category < ApplicationRecord
    has_many :markers, dependent: :destroy
end
