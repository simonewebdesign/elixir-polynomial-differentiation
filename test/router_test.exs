defmodule RouterTest do
  use ExUnit.Case, async: true
  use Plug.Test

  @opts Router.init([])

  test "returns the params" do
    # Create a test connection
    conn = conn(:get, "/12/6/3/1")

    # Invoke the plug
    conn = Router.call(conn, @opts)

    # Assert the response and status
    assert conn.state == :sent
    assert conn.status == 200
    assert conn.resp_body == ""
    assert conn.path_info == ["12", "6", "3", "1"]
  end
end
