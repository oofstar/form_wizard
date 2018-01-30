class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.fave_color = "Other"
      @user.fave_color = @user.other_color
    end 


    if @user.save
      redirect_to @user, notice: "User Successfully Added!"
    else
      flash[:notice] = @user.errors.full_messages.join(', ')
      render action: 'new'
    end
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :age, :height_feet, :height_inches, :weight, :fave_color, :other_color)
  end

end
