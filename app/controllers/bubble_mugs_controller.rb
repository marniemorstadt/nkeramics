class BubbleMugsController < ApplicationController
  before_action :set_bubble_mug, only: [:show, :edit, :update, :destroy]

  def index
    @bubble_mugs = BubbleMug.all
  end

  def show
  end

  def new
    @bubble_mug = BubbleMug.new
  end

  def create
    @bubble_mug = BubbleMug.new(bubble_mug_params)
    if @bubble_mug.save
      redirect_to @bubble_mug, notice: 'Bubble Mug was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @bubble_mug.update(bubble_mug_params)
      redirect_to @bubble_mug, notice: 'Bubble Mug was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bubble_mug.destroy
    redirect_to bubble_mugs_url, notice: 'Bubble Mug was successfully destroyed.'
  end

  private

  def set_bubble_mug
    @bubble_mug = BubbleMug.find(params[:id])
  end

  def bubble_mug_params
    params.require(:bubble_mug).permit(:name, :description, :price, :size,  photos: [])
  end

  def require_authorized_user
    unless current_user&.email == 'kerpnern@gmail.com'
      flash[:alert] = 'You are not authorized to perform this action.'
      redirect_to root_path
    end
  end
end
