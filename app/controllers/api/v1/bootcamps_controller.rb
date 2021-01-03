class BootcampsController < ApplicationController
  before_action :set_bootcamp, only: [:show, :update, :destroy]
  before_action :is_admin?, only: [:create, :update, :destroy]

  # GET /bootcamps
  def index
    @bootcamps = Bootcamp.all
    render json: @bootcamps
  end

  # GET /bootcamps/1
  def show
    render json: @bootcamp
  end

  # POST /bootcamps
  def create
    @bootcamp = Bootcamp.new(bootcamp_params)

    if @bootcamp.save
      render json: @bootcamp, status: :created, location: @bootcamp
    else
      render json: { errors: @bootcamp.errors.messages }, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bootcamps/1
  def update
    if @bootcamp.update(bootcamp_params)
      render json: @bootcamp, status: :ok
    else
      render json: { errors: @bootcamp.errors.messages }, status: :unprocessable_entity
    end
  end

  # DELETE /bootcamps/1
  def destroy
    if @bootcamp.destroy
      render json: {}, status: 204
    else
      render json: { errors: @bootcamp.errors.messages }, status: 422
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bootcamp
      begin
        @bootcamp = Bootcamp.find(params[:bootcamp_id])
      rescue => e
        render json: { errors: e.message }, status: 404
      end
    end

    # Only allow a trusted parameter "white list" through.
    def bootcamp_params
      params.require(:bootcamp).permit(:name, :locations, :overall_score, :curriculum_score, :job_support_score, :subjects, :description)
    end
end
