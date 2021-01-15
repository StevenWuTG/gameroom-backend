class ArticlesController < ApplicationController
    def create
        @article = Article.create(article_params)
        if @article.valid?
            render json: @article,  except: [:created_at, :updated_at]
        else
            render json: {errors: @article.errors} 
        end 
    end

    def index
        @articles = Article.all
        render json: @articles, except: [:created_at, :updated_at]
    end

    def show
        @article = Article.find(params[:id])
        render json: @article, except: [:created_at, :updated_at]
    end

    def update
        @article = Article.find(params[:id])
        if (@article.update!(article_params))
            render json: @article
        else
            render json: {errors: @article.errors} 
        end 
    end 

    def destroy
        @allarticles = Article.all
        @article = Article.find(params[:id])
        @article.destroy
        render json: @allarticles
    end
 
    private

    def article_params
        params.require(:article).permit(:title, :genre)
    end
end
