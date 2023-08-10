# frozen_string_literal: true

class LiftsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def new; end

  def calculate
    @lift = lift_params[:type].constantize.new(weight: lift_params[:weight])
  end

  private

  def lift_params
    params.require(:lift).permit(:weight, :type)
  end
end
