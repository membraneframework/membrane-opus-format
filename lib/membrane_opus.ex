defmodule Membrane.Opus do
  @moduledoc """
  This module implements struct describing an Opus-encoded audio packet.

  Based on [RFC 6716](https://tools.ietf.org/html/rfc6716).
  """

  @typedoc """
  Number of channels transmitted in a given packet.
  """
  @type channels_t :: 1 | 2

  @typedoc """
  Encoder mode used for a given packet.
  """
  @type mode_t :: :silk | :celt | :hybrid

  @typedoc """
  Bandwidth used for a given packet.
  """
  @type bandwidth_t :: :narrow | :medium | :wide | :super_wide | :full

  @typedoc """
  Duration in milliseconds of the original source per frame.
  The only valid float value is `2.5`, but apparently Elixir doesn't appear to allow
  typedefs with literal floats.
  """
  @type frame_size_t :: float() | 5 | 10 | 20 | 40 | 60

  @typedoc """
  Byte size of each frame in packet. The length of this array is also
  the number of frames in the packet (of course). However, some elements
  in the array may be 0, indicating a dropped frame; if you need to determine
  the total duration of a packet you should first filter any zero-values from this field.
  """
  @type frame_lengths_t :: [non_neg_integer()]

  @type t :: %__MODULE__{
          channels: channels_t,
          mode: mode_t,
          bandwidth: bandwidth_t,
          frame_size: frame_size_t,
          frame_lengths: frame_lengths_t
        }

  @enforce_keys [
    :channels,
    :mode,
    :bandwidth,
    :frame_size,
    :frame_lengths
  ]
  defstruct @enforce_keys
end
