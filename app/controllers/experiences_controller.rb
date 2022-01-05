class ExperiencesController < ApplicationController

  def show
    @experience = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
  end

  def delete
  end

  def update
  end

  private

  def experience_params
    params.require(:experience).permit(:company_name, :position, :date_begin, :date_end, :description)
  end
end
