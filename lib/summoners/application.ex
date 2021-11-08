defmodule Summoners.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      {Finch, name: Riot},
      Summoners.RiotApi.Cache,
      Summoners.Cache,
      {Task.Supervisor, name: Summoners.TaskSupervisor}
    ]

    opts = [strategy: :one_for_one, name: Summoners.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
