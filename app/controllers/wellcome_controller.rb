class WellcomeController < ApplicationController

  def show
    @users = User.all
  end

end
