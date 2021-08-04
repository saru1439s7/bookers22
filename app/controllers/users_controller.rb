class UsersController < ApplicationController
before_action :authenticate_user!

def show
 @user = User.find(params[:id])
 @book=Book.new
 @books=@user.books
end

def index
 @users= User.all
 @user= current_user
 @book=Book.new
end


def edit
  @user=User.find(params[:id])
  unless @user == current_user
    render edit
  end
end

def upadate
 @user = User.find(params[:id])
 @usr.upadate(user_params)
 redirect_to user_path(@user.id)
end

 private
  def user_params
   params.require(:user).permit(:name,:introduction,:profile_image)
  end

end