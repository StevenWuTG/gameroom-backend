class Game < ApplicationRecord
    has_many :game_ratings
    has_many :articles
    has_many :users, through: :game_ratings


end
