class ArticleCommentsController < ApplicationController
    skip_before_action :authorized

    def create
        @articleComment = ArticleComment.create(article_params)
        if @articleComment.valid?
            render json: @articleComment,  except: [:created_at, :updated_at]
        else
            render json: {errors: @articleComment.errors} 
        end 
    end

    def index
        @articleComments = ArticleComment.all
        render json: @articleComments, except: [:created_at, :updated_at]
    end

    def show
        @articleComment = ArticleComment.find(params[:id])
        render json: @articleComment, except: [:created_at, :updated_at]
    end

    def update
        @articleComment = ArticleComment.find(params[:id])
        if (@articleComment.update!(article_params))
            render json: @articleComment
        else
            render json: {errors: @articleComment.errors} 
        end 
    end 

    def destroy
        @articleComment = ArticleComment.find(params[:id])
        @articleComment.destroy
        @allarticles = ArticleComment.all
        render json: @allarticles
    end
 
    private

    def article_params
        params.require(:article_rating).permit(:star , :user_id, :article_id)
    end
end
