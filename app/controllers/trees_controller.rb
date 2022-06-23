class TreesController < ApplicationController
  def index
    @trees = Tree.all
  end

  def new
    @tree = Tree.new
  end

  def create
    @tree = Tree.new(tree_params)
    if @tree.save
      redirect_to tree_path(@tree), notice: 'Tree was successfully added'
    else
      render :new
    end
  end

  private

  def tree_params
    params.require(:tree).permit(:name, :adress, :description, :fruits,
    :price_per_year, :quantity_by_year)
  end
end
