class Api::V1::AuthController < EquitiesController
  def index
    render json: User.all
  end

  def show
    render json: User.find(params[:id])
  end

  def create
    equitie = Equitie.new(equitie_params)
    if equitie.save
      render json: {message: "Created Blog!", status: 200}
    else
      render json: {message: blog.errors.full_message, status: 500}
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

def equitie_params(*args)
  params.require(:equitie).permit(args)
end
