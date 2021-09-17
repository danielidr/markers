class Category < ApplicationRecord
    has_many :markers, dependent: :destroy
    has_many :categories, foreign_key: "parent_id", dependent: :destroy
    validates :name, uniqueness: true, presence: true


    def find_children(parent)
        children = Category.where(parent_id: parent.id).pluck(:name)
        children.join(", ")
    end
end
