  #  t.date :birth_date, null: false
  #     t.string :color,  null: false
  #     t.string :name,  null: false
  #     t.string :sex, limit: 1,  null: false
  #     t.text :description, null: false

class CatsController < ApplicationController


  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find(params[:id])

    render :show
  end

  def new
    @cat = Cat.new
    render :new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to cat_url(@cat)
    else 
      render  json: @user.errors.full_messages, status: 418
    end
  end

  private

  def cat_params
    params.require(:cat).permit(:birth_date, :color, :name, :sex, :description)
  end

end