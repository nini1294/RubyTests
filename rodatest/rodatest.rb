# cat config.ru
require "roda"

class Rodatest < Roda
  # use Rack::Session::Cookie, :secret => ENV['SECRET']

  route do |r|
    # GET / request
    r.root do
      "Hidey ho"
    end

    # /hello branch
    r.on "hello" do
      # Set variable for all routes in /hello branch
      @greeting = 'Hello'

      # GET /hello/world request
      r.get ":greet" do |greet|
        "#{@greeting} #{greet}"
      end

      # /hello request
      r.is do
        # GET /hello request
        r.get do
          "#{@greeting}!"
        end
      end
    end
  end
end