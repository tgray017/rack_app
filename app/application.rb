class Application
  def call(env)
    resp = Rack::Response.new
    resp.write "Hello!\n"
    resp.write "Let\'s practice some Rack stuff!\n"
    if Time.now.sec.odd?
      resp.write "We\'re in a pretty odd time.\n"
    else
      resp.write "Everything\'s even steven.\n"
    end
    resp.finish
  end
end
