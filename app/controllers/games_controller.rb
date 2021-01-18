class GamesController < ApplicationController
    skip_before_action :authorized


    def create
        @game = Game.create(game_params)
        if @game.valid?
            render json: @game,  except: [:created_at, :updated_at]
        else
            render json: {errors: @game.errors} 
        end 
    end

    def index
        @games = Game.all
        render json: @games, except: [:created_at, :updated_at]
    end

    def show
        @game = Game.find(params[:id])
        render json: @game, except: [:created_at, :updated_at]
    end

    def update
        @game = Game.find(params[:id])
        if (@game.update!(game_params))
            render json: @game
        else
            render json: {errors: @game.errors} 
        end 
    end 

    def destroy
        @allgames = Game.all
        @game = Game.find(params[:id])
        @game.destroy
        render json: @allgames
    end
 
    private

    def game_params
        params.require(:game).permit(:title, :genre)
    end
end
