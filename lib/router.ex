defmodule Router do
  use Plug.Router

  plug :match
  plug :dispatch

  get "/*_rest" do
    send_resp(conn, 200, "world")
  end

  match _ do
    send_resp(conn, 404, "oops")
  end
end
