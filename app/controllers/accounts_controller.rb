class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :edit, :update, :destroy]

  def show

  end

  def destroy
    @account.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Account wurde gelöscht!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_account
      @account = Account.find(params[:id])
      #@course = Course.find_by_slug(params[:slug])
    end
end
