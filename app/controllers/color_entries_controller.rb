class ColorEntriesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_color_entry, only: [:edit, :update, :destroy]

  def index
    @color_entries = current_user.color_entries.order(date: :desc)
    @today = Date.today
  end

  def new
    @color_entry = current_user.color_entries.build(date: Date.today)
  end

  def create
    @color_entry = current_user.color_entries.build(color_entry_params)
    if @color_entry.save
      redirect_to root_path, notice: '記録しました'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @color_entry.update(color_entry_params)
      redirect_to root_path, notice: '更新しました'
    else
      render :edit
    end
  end

  def destroy
    @color_entry.destroy
    redirect_to root_path, notice: '削除しました'
  end

  private

  def set_color_entry
    @color_entry = current_user.color_entries.find(params[:id])
  end

  def color_entry_params
    params.require(:color_entry).permit(:color, :memo, :date)
  end
end