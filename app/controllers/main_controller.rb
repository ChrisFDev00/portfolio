class MainController < ApplicationController
  def index
  end

  def direct_to_admin
    redirect_to "/"
  end

end
