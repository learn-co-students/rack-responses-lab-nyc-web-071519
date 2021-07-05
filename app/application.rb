class Application
    def call(env)
        resp = Rack::Response.new
        time1 = Time.now
        if time1.hour <=12
            resp.write "Morning"
        elsif time1.hour > 12
            resp.write "Afternoon"
        end
        resp.finish
    end
end