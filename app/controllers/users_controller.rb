class UsersController < ApplicationController
  def index
    page_size = params[:page_size]&.to_i || 10
    page = params[:page]&.to_i || 0
    offset = page_size * page

    @users = User.where(role_id: 1).limit(page_size).offset(offset)
    render template: "users/index"
  end
end
