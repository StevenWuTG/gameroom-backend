class GameRatingsController < ApplicationController
    skip_before_action :authorized
end
