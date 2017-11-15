class LessonsController < ApplicationController
  def index
    @course = Course.all
    render :index
  end

  def show
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons
    render :show
  end

end
