defmodule Roboter.MixProject do
  use Mix.Project

  def project do
    [
      app: :roboter,
      version: "0.1.0",
      elixir: "~> 1.8",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Roboter, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:httpoison, "~> 1.5"},
      {:jason, "~> 1.1"},
      {:poison, "~> 3.1"},
      {:plug_cowboy, "~> 1.0.0"},
      {:plug, "~> 1.0"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    ]
  end
end
