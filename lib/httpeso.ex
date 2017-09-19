defmodule Httpeso do
  def start do
    {:ok, _} = :cowboy.start_http(
      :http,
      100,
      [{:port, 8080}],
      [{:env, [{:dispatch, config()}]}]
    )
  end

  def config do
    :cowboy_router.compile([
      {:_, [
        {"/", :cowboy_static, {:priv_file, :httpeso, "index.html"}},
        {"/static/[...]", :cowboy_static, {:priv_dir, :httpeso, "static"}}
      ] }
    ])
  end
end
