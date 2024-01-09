class CustomersController < ApplicationController
  before_action :fetch_customer, only: %i[show edit update]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def show; end

  def create
    @customer = Customer.new(customer_params)
    return redirect_to dashboard_path(cpf: @customer.cpf), notice: 'Cadastro Realizado com sucesso' if @customer.save

    render :new
  end

  def edit; end

  def update 
    return redirect_to dashboard_path(cpf: @customer.cpf),
    notice: 'Cadastro Atualizado com sucesso' if @customer.update(customer_params)

    render :edit
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :telephone, :address, :health_care_number, :cpf, :age)
  end

  def fetch_customer
    @customer = Customer.find(params[:id])
  end
end
