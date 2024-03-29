defmodule AgileCoachCampex.Mixfile do
  use Mix.Project

  def project do
    [app: :agile_coach_campex,
     version: "1.0.2",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix] ++ Mix.compilers,
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [mod: {AgileCoachCampex, []},
     applications: app_list(Mix.env)]
  end

  defp app_list(:dev), do: app_list
  defp app_list(_), do: app_list
  defp app_list, do: [
    :phoenix, 
    :phoenix_html, 
    :cowboy, 
    :logger,
    :phoenix_ecto, 
    :postgrex,
    :mailman,
    :eiconv
  ]


  # Specifies which paths to compile per environment
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies
  #
  # Type `mix help deps` for examples and options
  defp deps do
    [
      {:phoenix, "~> 0.13.1"},
      {:phoenix_ecto, "~> 0.4"},
      {:postgrex, ">= 0.0.0"},
      {:mailman, "~> 0.1.1"},
      {:phoenix_html, "~> 1.0"},
      {:phoenix_live_reload, "~> 0.4", only: :dev},
      {:cowboy, "~> 1.0"},
      {:eiconv, github: "zotonic/eiconv"},
      {:exrm, "~> 0.15.3"}
    ]
  end


end
