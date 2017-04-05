defmodule Membrane.Caps.Audio.Opus do
  @moduledoc """
  This module implements struct for caps representing a single Opus-encoded
  audio frame.
  """

  # Opus frame duration type.
  #
  # 2 means 2.5ms, other values just map into duration in miliseconds.
  @type frame_duration_t :: 2 | 5 | 10 | 20 | 40 | 60


  # Amount of channels inside Opus frame.
  #
  # Can be 1 or 2.
  @type channels_t :: 1 | 2


  # Enable/disable inband forward error correction
  #
  # Can be true (FEC enabled) or false (FEC disabled)
  @type enable_fec_t :: boolean


  @type t :: %Membrane.Caps.Audio.Opus{
    frame_duration: frame_duration_t,
    channels: channels_t,
    enable_fec: enable_fec_t
  }

  defstruct \
    frame_duration: nil,
    channels: nil,
    enable_fec: nil
end
