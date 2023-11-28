class Content < ApplicationRecord
  has_many_attached :media
  has_many :reviews
end
