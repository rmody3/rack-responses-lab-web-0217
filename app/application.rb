class Application

  def call(env)
    resp = Rack::Response.new
    afternoon = Time.parse("12:00 pm")
    time_now = Time.now
    if time_now < afternoon
     resp.write "Good Morning!"
   else
     resp.write "Good Afternoon!"
   end
     resp.finish
  end
end
