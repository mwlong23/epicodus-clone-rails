class LessonsController < ApplicationController
  def new
    @course = Course.find(params[:course_id])
    @lesson = @course.lessons
  end
end
