class Tweet < ApplicationRecord
    belongs_to :user
    has_many :likes, dependent: :destroy  
#    has_many :user, through: :likes
end