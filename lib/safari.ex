defmodule Safari do
  require Logger
  use Application

  def start(_type, _args) do
    path_list = [
      {"/", Safari.Test, []}
    ]

    routes = [{:_, path_list}]
    dispatch = :cowboy_router.compile(routes)
    opts = [
      port: 4000,
      certfile: "./priv/server.pem",
      keyfile: "./priv/server.key"
    ]
    env = %{dispatch: dispatch}
    onresponse = fn(status, _headers, _body, request) ->
      method = :cowboy_req.method(request)
      path = :cowboy_req.path(request)
      Logger.info("#{method} #{path} - #{status}")
      request
    end

    :cowboy.start_tls(:https, opts, %{env: env, onresponse: onresponse})
  end
end
