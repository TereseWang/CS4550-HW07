defmodule EventappWeb.PageController do
  use EventappWeb, :controller

  alias Eventapp.Events
  alias Eventapp.Events.Event
  
  def index(conn, _params) do
    events = Events.list_events()
    render(conn, "index.html", events: events)
  end
end
