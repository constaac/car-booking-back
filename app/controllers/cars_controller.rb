class CarsController < OpenReadController
  before_action :set_car, only: [:update, :destroy]

  # GET /cars
  def index
    # @current_user_id = current_user.id
    # @car = Car.where(user_id: @current_user_id)
   @cars=current_user.cars
    render json: @cars
  end

  # GET /cars/1
  def show
    render json: @car
  end

  # POST /cars
  def create
    @car = current_user.cars.build(car_params)

    if @car.save
      render json: @car, status: :created, location: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  def update
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = current_user.cars.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def car_params
      params.require(:car).permit(:model, :color, :lcp, :repair)
    end
end