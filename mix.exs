defmodule Safari.Mixfile do
  use Mix.Project

  def project do
    [
      app: :safari,
      version: "0.1.0",
      elixir: "~> 1.3",
      deps: deps
    ]
  end

  def application do
    [
      mod: {Safari, []},
      applications: applications(Mix.env)
    ]
  end

  defp applications(:dev), do: applications(:all) ++ [:remix]
  defp applications(_), do: [:cowboy]

  defp deps do
    [
      {:cowboy,  "~> 2.2"},
      {:remix, "~> 0.0.1", only: :dev}
    ]
  end
end
