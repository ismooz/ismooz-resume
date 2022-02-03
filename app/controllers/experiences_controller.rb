class ExperiencesController < ApplicationController

  before_action :set_experience, only: [:show]

  def show
    @experience = Experience.find(params[:id])
  end

  def index
    @experiences = Experience.all
  end

  def new
    @experience = Experience.new
  end

  def create
    @experience = Experience.new(experience_params)
    if @experience.save
      flash[:success] = "New experience created!"
      redirect_to root_path
    else
       render :new
    end
  end

  def delete
  end

  def update
  end

  private

  def experience_params
    params.require(:experience).permit(:experience_id, :company_name, :position, :date_begin, :date_end, :description)
  end

  def set_experience
    @experience = Experience.find(params[:id])
  end

  def download_pdf
    send_file(
      "#{Rails.root}/public/resume.pdf",
      filename: "resume.pdf",
      type: "application/pdf"
      )
  end

end
