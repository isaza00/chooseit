class CoursesController < ApplicationController
  before_action :set_course, only: [:show, :update, :destroy]
  before_action :is_admin?, only: [:create, :update, :destroy]

  # GET /courses
  def index
    @courses = Course.all
    render json: @courses
  end

  # GET /courses/1
  def show
    render json: @course
  end

  # POST /courses
  def create
    @course = Course.new(course_params)

    if @course.save
      render json: @course, status: :created, location: @course
    else
      render json: { errors: @course.errors.messages } , status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bootcamps/1/courses/1
  def update
    if @course.update(course_params)
      render json: @course
    else
      render json: @course.errors, status: :unprocessable_entity
    end
  end

  # DELETE /courses/1
  def destroy
    @course.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      begin
        @course = Course.find(params[:course_id])
        @bootcamp = User.find(params[:bootcamp_id])
      rescue => e
        render json: { errors: e.message }, status: 404
      end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:name, :cost, :duration, :locations, :description, :subjects)
    end
end
