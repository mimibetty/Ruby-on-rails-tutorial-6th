# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :following, :followers]
  before_action :admin_user, only: :destroy
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy, :following, :followers]
  before_action :correct_user,  only: [:edit, :update]

  def index
    @users = User.paginate(page: params[:page], per_page: 30)
  end

  def show
    @microposts = @user.microposts.includes(:user, image_attachment: :blob)
                       .paginate(page: params[:page], per_page: 30) #use includes to avoid N+1 query  
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      @user.send_activation_email
      flash[:info] = 'Please check your email to activate your account.'
      redirect_to root_url
    else
      render 'new'
    end
  end

  def update
    if @user.update(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    flash[:success] = 'User deleted'
    redirect_to users_url
  end

  def following
    @title = 'Following'
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = 'Followers'
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def correct_user
    redirect_to(root_url) unless current_user?(@user)
  end

  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end
end