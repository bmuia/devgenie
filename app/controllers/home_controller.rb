class HomeController < ApplicationController
  layout 'landing', only: [:index]

  def index
  end
end
