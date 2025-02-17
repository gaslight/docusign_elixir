defmodule DocuSign.MixProject do
  @moduledoc false
  use Mix.Project

  @version "0.3.3"
  @url "https://github.com/neilberkman/docusign_elixir"
  @maintainers [
    "Neil Berkman"
  ]

  def project do
    [
      name: "DocuSign",
      app: :docusign,
      version: @version,
      elixir: "~> 1.7",
      package: package(),
      source_url: @url,
      maintainers: @maintainers,
      description: "Unofficial DocuSign Elixir Library used to interact with the eSign REST API.",
      homepage_url: @url,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      applications: [:logger, :poison, :joken, :oauth2, :tesla, :plug_cowboy],
      mod: {DocuSign.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:poison, "~> 4.0"},
      {:joken, "~> 2.0"},
      {:oauth2, "~> 2.0"},
      {:tesla, "~> 1.1"},
      {:plug_cowboy, "~> 2.0"},
      {:castore, "~> 0.1.0"},
      {:mint, "~> 1.0"},

      # test
      {:mock, "~> 0.3.2", only: :test},
      {:bypass, "~> 2.1", only: :test},

      # dev
      {:ex_doc, ">= 0.0.0", only: :dev},
      {:credo, "~> 1.0", only: [:dev, :test], runtime: false}
    ]
  end

  defp package do
    [
      maintainers: @maintainers,
      licenses: ["MIT"],
      links: %{github: @url},
      files: ~w(lib) ++ ~w(LICENSE mix.exs README.md)
    ]
  end
end
