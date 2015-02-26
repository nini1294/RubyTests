require "roda"

class App < Roda
  use Rack::Session::Cookie, :secret => ENV['SECRET']

  route do |r|
    # GET / request
    r.root do
      r.redirect "/hello"
    end

    # /hello branch
    r.on "hello" do

      # GET /hello/world request
      r.get "world" do
        "Hello world!"
      end

      # /hello request
      r.is do
        # GET /hello request
        r.get do
          "Hello!"
        end

        # POST /hello request
        r.post do
          puts "Someone said hello!"
          r.redirect
        end
      end
    end
  end
end