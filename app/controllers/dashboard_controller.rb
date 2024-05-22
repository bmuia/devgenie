class DashboardController < ApplicationController
  def index
    @username = current_user.username
  end
end
