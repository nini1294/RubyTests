#\ -p 3012

require "roda"

class HelloWorld < Roda
  route do |r|
    r.root do
      "Hello World!"
    end
    r.get "/:y/:m/:d/:slug" do |y, m, d, slug|
      "#{y}-#{m}-#{d} #{slug}"
    end
  end
end

APP = HelloWorld.app
run APP