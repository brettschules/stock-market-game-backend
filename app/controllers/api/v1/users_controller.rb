class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [ :update, :destroy]

  def index
    render json: User.all
  end

  def show
    # byebug
    @user = User.find_by(id: params[:id])
    render json: @user
  end


  def create
    @user = User.new(user_params)

    if @user.save
      created_jwt = issue_token({id: @user.id})

      render json: { user_id: @user.id, token: created_jwt }, status: :created
    else
      render json: { errors: @user.errors.full_messages, status: :unprocessable}
    end
  end

  def update
    if @user.update(account_balance: params[:account_balance])
      render json: {
        user_id: @user
      }
    else
      render json: @user.errors, status: :unprocessable
    end
  end

  def destroy
    @user.destroy
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.permit(:name, :username, :image, :password, :password_confirmation, :account_balance)
    end
  end
