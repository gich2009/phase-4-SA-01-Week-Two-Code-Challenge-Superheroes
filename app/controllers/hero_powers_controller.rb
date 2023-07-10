class HeroPowersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
  skip_before_action :verify_authenticity_token


  def create
    hero_power = HeroPower.create!(hero_power_params)
    hero = hero_power.hero
    render json: hero, serializer: HeroPowersSerializer, status: :created
  end


  private

  def hero_power_params
    params.permit(:strength, :power_id, :hero_id)
  end

  def render_unprocessable_entity exception
    render json: { error: exception.record.errors.full_messages }, status: :unprocessable_entity
  end

end
