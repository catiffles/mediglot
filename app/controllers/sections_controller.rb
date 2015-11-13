class SectionsController < ApplicationController

  def index
    @sections = Section.all
    render json: @sections, status: 200
  end

  def show
    @section = Section.find(params[:id])
    render json: @section, status: 200
  end

  private
    def section_params
      params.require(:section).permit(:name, :topic_id)
    end
end
