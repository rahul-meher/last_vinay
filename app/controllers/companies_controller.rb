class CompaniesController < ApplicationController
  def new
    @company=Company.new
  end
  def index

  end
  def show

  end
  def search

  end
  def create
    @company = Company.new(user_params)
    if @company.save
      flash[:success] = "Welcome to the  App!"
      redirect_to @company
    else
      render 'new'
    end
  end
  private

  def user_params
    params.require(:company).permit(:name, :material, :packagingmethod,
                                 :city, :postalcode, :email)
  end
end
