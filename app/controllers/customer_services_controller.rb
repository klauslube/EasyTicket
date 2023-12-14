class CustomerServicesController < ApplicationController
  before_action :fetch_customer_service, only: %i[show]

  def new
    @customer_service = CustomerService.new
  end

  def initiate
    @customer_service_params = customer_service_params
    @customer_service = CustomerService.new
  end

  def create
    @customer_service = CustomerService.new(customer_service_params)
    @customer_service.generate_code
    redirect_to @customer_service if @customer_service.save
  end

  def show; end

  private

  def customer_service_params
    params.require(:customer_service).permit(:code, :service_type, :medical_service_type)
  end

  def fetch_customer_service
    @customer_service = CustomerService.find(params[:id])
  end
end