defmodule Membrane.Caps.Audio.Opus.Mixfile do
  use Mix.Project

  def project do
    [app: :membrane_caps_audio_opus,
     version: "0.0.1",
     elixir: "~> 1.3",
     description: "Membrane Multimedia Framework (Audio.Opus caps)",
     maintainers: ["Marcin Lewandowski"],
     licenses: ["LGPL"],
     name: "Membrane Caps: Audio.Opus",
     source_url: "https://bitbucket.org/radiokit/membrane-caps-audio-opus",
     preferred_cli_env: [espec: :test],
     deps: deps]
  end


  def application, do: []
  defp deps, do: []
end
