class UsersController < ApplicationController
  def new
    @message = "Hello #{'world'.reverse}"
  end
end
