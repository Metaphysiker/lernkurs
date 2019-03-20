class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def show

  end

  def destroy
    puts "destroy"
    puts @account.id
    @account.destroy
    @account = Account.create
    puts @account.id
    cookies.permanent["philosophie-lernkurs-cookie-id"] = @account.id

    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      if Account.where(id: params[:id]).empty?
        @account = Account.create
      else
        @account = Account.find(params[:id])
      end
      #@course = Course.find_by_slug(params[:slug])
    end
end
