class Api::ResponsesController < ApplicationController
  def create
    @response = Response.new(response_params)
    
    @response.author_id = current_user.id

    if @response.save
      render :show
    else
      render json: @response.errors.full_messages, status: 401
    end
  end

  def destroy
    @response = Response.find(params[:id])
    @response.destroy
    @responses = Response.includes(:author).all

    render :show
  end

  private
  def response_params
    params.require(:response).permit(:body, :story_id)
  end
end
