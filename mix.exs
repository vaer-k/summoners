defmodule Summoners.MixProject do
  use Mix.Project

  def project do
    [
      app: :summoners,
      version: "0.1.0",
      elixir: "~> 1.12",
      compilers: [:gettext] ++ Mix.compilers(),
      deps: deps()
    ]
  end

  def application do
    [
      mod: {Summoners.Application, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:gettext, "~> 0.18"},
      {:jason, "~> 1.2"},
      {:finch, "~> 0.9.0"}
    ]
  end
end
