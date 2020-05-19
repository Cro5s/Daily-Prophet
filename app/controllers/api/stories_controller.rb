class Api::StoriesController < ApplicationController
  def index
    @stories = Story.includes(:author).all
    render :index
  end

  def show
    @story = Story.includes(:author, :responses).find(params[:id])
    render :show
  end

  def create
    @story = Story.new(story_params)

    @story.author_id = current_user.id

    if @story.save
      render :show
    else
      render json: @story.errors.full_messages, status: 401
    end
  end

  def update
    @story = Story.find_by(id: params[:story][:id])

    if @story.update(story_params)
      render :show
    else
      render json: @story.errors.full_messages, status: 401
    end
  end

  def destroy
    @story = Story.find(params[:id])
    @story.destroy
    @stories = Story.includes(:author).all

    render :index
  end

  private
  def story_params
    params.require(:story).permit(:title, :body, :image)
  end
end