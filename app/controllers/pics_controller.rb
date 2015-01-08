class PicsController < ApplicationController
  before_action :set_pic, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pics = Pic.all
    respond_with(@pics)
  end

  def show
    respond_with(@pic)
  end

  def new
    @pic = current_admin.pics.build
    respond_with(@pic)
  end

  def edit
  end

  def create
    @pic = current_admin.pics.build(pic_params)
    @pic.save
    respond_with(@pic)
  end

  def update
    @pic.update(pic_params)
    respond_with(@pic)
  end

  def destroy
    @pic.destroy
    respond_with(@pic)
  end

  private
    def set_pic
      @pic = Pic.find(params[:id])
    end

    def pic_params
      params.require(:pic).permit(:description, :image)
    end
end
