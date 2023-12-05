class CustomerServicesController < ApplicationController
  
  def new
    @customer_service = CustomerService.new
  end

  def create
    @customer_service = CustomerService.new(customer_service_params)
    # @customer_service.type = params[:service_type]
    return redirect_to @customer_service, notice: 'Novo atendimento iniciado' if @customer_service.save
    puts 'batata'
    render :new
  end

  def show
    @customer_service = CustomerService.find(params[:id])
    @customer_service.code = params[:id]
  end

  private

  def customer_service_params
    params.require(:customer_service).permit(:code, :service_type, :medical_service_type)
  end
end