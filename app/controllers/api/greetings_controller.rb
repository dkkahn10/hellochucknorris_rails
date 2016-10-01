class Api::GreetingsController < ApiController
  def index
    greetings = Greeting.all
    json = {"greeting": greetings.sample.greeting }

    respond_to do |format|
      format.json { render json: json }
    end
  end

  def create
    Greeting.create(greeting_params)
  end

  private
  def greeting_params
    params.require(:greeting).permit(:greeting)
  end
end
