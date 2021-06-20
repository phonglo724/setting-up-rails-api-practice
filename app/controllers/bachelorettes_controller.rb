class BachelorettesController < ApplicationController

    # display all instances of bachelorettes in our database
    # HTTP method: GET
    def index 
        @bachelorettes = Bachelorette.all 
        render json: @bachelorettes
    end

    # display an/one instance of a bachelorette
    # HTTP method: GET
    def show 
        @bachelorettes = Bachelorette.find(params[:id]) 
        render json: @bachelorettes
    end

    # create an/one instance of a bachelorette
    # HTTP method: POST
    def create 
        @bachelorette = Bachelorette.create(
            first_name: params[:first_name],
            last_name: params[:last_name]
        )
        render json: @bachelorette
    end

    # update an/one instance of an existing bachelorette
    # HTTP method: PATCH
    def update
        @bachelorette = Bachelorette.find(params[:id])
        @bachelorette.update(
            first_name: params[:first_name],
            last_name: params[:last_name]
        )
        render json: @bachelorette
    end

    # delete an/one instance of an existing bachelorette
    # HTTP method: DELETE
    def destroy
        @bachelorettes = Bachelorette.all 
        @bachelorette = Bachelorette.find(params[:id])
        @bachelorette.destroy 
        render json: @bachelorettes
    end

end
