class DashboardController < ApplicationController
  def index
    @cpf = params[:cpf]
  end
end
