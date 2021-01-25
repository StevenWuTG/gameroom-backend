class ArticleRatingsController < ApplicationController
    skip_before_action :authorized

    def create
        @articleRating = ArticleRating.create(article_params)
        if @articleRating.valid?
            render json: @articleRating,  except: [:created_at, :updated_at]
        else
            render json: {errors: @articleRating.errors} 
        end 
    end

    def index
        @articleRatings = ArticleRating.all
        render json: @articleRatings, except: [:created_at, :updated_at]
    end

    def show
        @articleRating = ArticleRating.find(params[:id])
        render json: @articleRating, except: [:created_at, :updated_at]
    end

    def update
        @articleRating = ArticleRating.find(params[:id])
        if (@articleRating.update!(article_params))
            render json: @articleRating
        else
            render json: {errors: @articleRating.errors} 
        end 
    end 

    def destroy
        @allarticles = ArticleRating.all
        @articleRating = ArticleRating.find(params[:id])
        @articleRating.destroy
        render json: @allarticles
    end
 
    private

    def article_params
        params.require(:article_rating).permit(:content , :user_id, :article_id)
    end
end
