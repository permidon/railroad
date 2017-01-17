class Admin::CarsController < Admin::BaseController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :set_train, only: [:new, :create]

  def index
    @cars = Car.all
  end

  def show
  end

  def new
    @car = Car.new
  end

  def edit
  end

  def create
    @car = @train.cars.new(car_params)

    if @car.save
      redirect_to [:admin, @train], notice: t('.success')
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to admin_car_path(@car), notice: t('.success')
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to admin_cars_path, notice: t('.success')
  end

  private

  def set_train
    @train = Train.find(params[:train_id])
  end

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:number, :type, :upper_places, :lower_places, :side_upper_places, :side_lower_places, :seat_places, :train_id)
  end
end