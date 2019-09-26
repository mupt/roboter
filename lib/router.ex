defmodule Roboter.Router do
  use Plug.Router
  use Plug.Debugger, otp_app: :roboter

  plug Plug.Logger
  #plug Plug.Parsers, parsers: [:urlencoded, :json],
  #  json_decoder: Jason
  plug :match
  plug :dispatch

  post "/webhook" do
    send_resp(conn, 200, "hi")
  end

  match _ do
    send_resp(conn, 404, "not found")
  end
end
