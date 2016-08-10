class Restaurant < ApplicationRecord
has_many :reviews, dependent: :destroy
validates :name, presence: true
validates :address, presence: true
validates :category, presence: true, inclusion: { in: ["italian", "french", "chinese", "japanese", "belgian"]}



end
