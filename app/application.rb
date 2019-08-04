class Application
 
  def call(env)
    resp = Rack::Response.new
 
    time = Time.new
 
    resp.write "The time is now: #{time.hour}: #{time.min}\n"

 
    if time.hour >= 12
      resp.write "Good Afternoon!"
    else 
      resp.write "Good Morning!"
    end
 
    resp.finish
  end
 
end