class InputDatesController < ApplicationController
  def index
    @date = InputDate.all
    render json: @date
  end

  def create
    @date = InputDate.new(date_params)
    if @date.save
      render json: @date, status: :created
    else
      render json: @date.errors, status: :unprocessable_entity
    end
  end

  def show
    render json: InputDate.find(params[:id])
  end

  def update
    @date = InputDate.find(params[:id])
    if @date.update(date_params)
      head :no_content
    else
      render json: @date.errors, status: :unprocessable_entity
    end
  end

  def date_params
    params.require(:input_date).permit(:start_date)
  end

end
