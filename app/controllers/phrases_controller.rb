class PhrasesController < ApplicationController

  def index
    @phrases = Phrase.all
    render json: @phrases, status: 200
  end

  def show
    @phrase = Phrase.find(params[:id])
    render json: @phrase, status: 200
  end

  private
    def phrase_params
      params.require(:phrase).permit(:english, :traditional, :pinyin, :list_id)
    end
end
