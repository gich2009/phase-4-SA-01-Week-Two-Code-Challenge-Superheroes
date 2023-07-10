class PowersController < ApplicationController
  wrap_parameters format: []
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
  rescue_from ActiveRecord::RecordInvalid,  with: :render_unprocessable_entity
  skip_before_action :verify_authenticity_token


  def index
    powers = Power.all
    render json: powers, status: :ok
  end

  def show
    power = find_power
    render json: power, status: :ok
  end

  def update
    power = Power.find(params[:id])
    power.update(power_params)
    render json: power, status: :ok
  end


  
  private

  def power_params
    params.permit(:power, :description)
  end

  def find_power
    Power.find(params[:id])
  end

  def render_unprocessable_entity exception
    render json: { error: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

  def render_not_found
    render json: { error: "Power not found" }, status: :not_found
  end

end
