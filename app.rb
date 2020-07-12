require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  # Returns "Hello World!" in browser when we go to URL /hello
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  # allows us to take input straight from the url, instead of through a form
  # can modify the content of a view at the moment the get request is received by the controller.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get '/goodbye/:name' do
    @user_name = params[:name]
    "Goodbye, #{@user_name}."
  end

  get '/multiply/:num1/:num2' do
    @product = params[:num1].to_i * params[:num2].to_i
    "#{@product}"
  end
end