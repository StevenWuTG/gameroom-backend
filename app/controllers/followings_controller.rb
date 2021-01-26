class FollowingsController < ApplicationController

    skip_before_action :authorized

    def create
        @following = Following.create(following_params)
        if @following.valid?
            render json: @following,  except: [ :updated_at]
        else
            render json: {errors: @following.errors} 
        end 
    end

    def index
        @followings = Following.all
        render json: @followings, except: [ :updated_at]
    end

    def show
        @following = Following.find(params[:id])
        render json: @following, except: [ :updated_at]
    end

    def update
        @following = Following.find(params[:id])
        if (@following.update!(following_params))
            render json: @following
        else
            render json: {errors: @following.errors} 
        end 
    end 

    def destroy
        @allfollowings = Following.all
        @following = Following.find(params[:id])
        @following.destroy
        render json: @allfollowings
    end
 
    private

    def following_params
        params.require(:following).permit(:user_id,:follow_id)
    end
end
