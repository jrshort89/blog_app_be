class ConversationController < ApplicationController
  def create
    response = OpenAiService.new.post(conversation_params[:prompt])
    render json: response['choices'][0]['message']
  end

  private

  def conversation_params
    params.require(:conversation).permit(:prompt)
  end
end