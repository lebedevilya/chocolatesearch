class RecipesController < ApplicationController
  def index
    params[:search] ||= 'chocolate'
    @data = Recipe.for(params[:search])
  end
end