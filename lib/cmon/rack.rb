class Cmon::Rack
  def initialize(app, path)
    @app = app
  end

  def call(env)
    status, headers, body = @app.call(env)

    if headers["Content-Type"] == "text/html"
      [status, headers, [Cmon.process(body)]]
    else
      [status, headers, body]
    end
  end
end

