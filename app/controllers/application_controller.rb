class ApplicationController < ActionController::Base
  before_action :set_account

  private

  def set_account
    if cookies["philosophie-lernkurs-cookie-id"].present?
      @account = Account.find(cookies["philosophie-lernkurs-cookie-id"])
    else
      @account = Account.create
      cookies.permanent["philosophie-lernkurs-cookie-id"] = @account.id
    end
  end

end
