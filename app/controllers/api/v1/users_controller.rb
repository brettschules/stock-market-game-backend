class Api::V1::AuthController < UsersController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
