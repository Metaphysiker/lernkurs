class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def show

  end

  def destroy
    @account.destroy
    @account = Account.create
    cookies.permanent["philosophie-lernkurs-cookie-id"] = @account.id

    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
      #@course = Course.find_by_slug(params[:slug])
    end
end
