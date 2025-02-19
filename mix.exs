defmodule UeberauthLinkedin.Mixfile do
  use Mix.Project

  @url "https://github.com/fajarmf/ueberauth_linkedin"

  def project do
    [app: :ueberauth_linkedin,
     version: "0.3.2",
     name: "Ueberauth LinkedIn Strategy",
     elixir: "~> 1.12",
     package: package(),
     source_url: @url,
     homepage_url: @url,
     description: description(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     docs: docs()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :oauth2, :ueberauth]]
  end

  defp docs do
    [extras: docs_extras(), main: "readme"]
  end

  defp docs_extras do
    ["README.md"]
  end

  defp description do
    "An Ueberauth strategy for LinkedIn authentication"
  end

  defp deps do
    [{:ueberauth, "~> 0.10.3"},
     {:oauth2, "~> 2.0"},
     {:earmark, "~> 1.3", only: :dev},
     {:ex_doc, "~> 0.21", only: :dev}]
  end

  defp package do
    [files: ["lib", "mix.exs", "README.md", "LICENSE"],
      maintainers: ["Fajar Firdaus"],
      licenses: ["MIT"],
      links: %{"Github": @url}]
  end
end
