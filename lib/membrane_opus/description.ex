defmodule Membrane.Opus.Description do
  @moduledoc """
  This module implements struct describing an Opus-encoded audio stream.

  Based on [RFC 6716](https://tools.ietf.org/html/rfc6716).
  """

  # TODO Support combined multiple frames (up to 120ms).
  @typedoc """
  Opus frame duration in milliseconds.

  Allowed values: `2.5`, `5`, `10`, `20`, `40`, `60`.
  """
  @type frame_duration_t :: float | integer

  @typedoc """
  Number of channels transmitted in the stream.
  """
  @type channels_t :: 1 | 2

  @typedoc """
  Enable/disable in-band _Forward Error Correction_ (FEC).
  """
  @type fec_enabled_t :: boolean

  @typedoc """
  Bitrate used to encode the stream in `bit/s`.

  Opus supports all bitrates from `6 kbit/s` to `510 kbit/s`,
  so this value has to be in range `6144` to `522240`.
  """
  @type bitrate_t :: non_neg_integer

  @type t :: %__MODULE__{
          bitrate: bitrate_t,
          frame_duration: frame_duration_t,
          channels: channels_t,
          fec_enabled: fec_enabled_t
        }

  @enforce_keys [
    :bitrate,
    :frame_duration,
    :channels,
    :fec_enabled
  ]
  defstruct @enforce_keys
end
