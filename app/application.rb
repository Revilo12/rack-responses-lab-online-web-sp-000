class Application

  def call(env)
    resp = Rack::Response.new

    resp.write Time.new.hour >= 12 ? "Good Afternoon" : "Morning"
    resp.finish
  end
end
