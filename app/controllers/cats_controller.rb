class CatsController < ApplicationController
    def index
        cats = Cat.all
        render json: cats
    end

    def create
        cat = Cat.create(
            name: params[:name],
            age: params[:age]
        )
        render json: cat
    end
end
