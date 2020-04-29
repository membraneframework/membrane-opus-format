defmodule Membrane.Opus do
  @moduledoc """
  This module implements struct describing an Opus-encoded audio stream.

  Based on [RFC 6716](https://tools.ietf.org/html/rfc6716).
  """

  @typedoc """
  Number of channels transmitted in the stream.
  """
  @type channels_t :: 1 | 2 | nil

  @typedoc """
  Determines whether the stream is equipped with in-band _Forward Error Correction_ (FEC).
  """
  @type fec_available_t :: boolean | nil

  @typedoc """
  Bitrate used to encode the stream in `bit/s`.

  Opus supports all bitrates from `6 kbit/s` to `510 kbit/s`,
  so this value has to be in range `6144` to `522240`.
  """
  @type bitrate_t :: non_neg_integer | nil

  @type t :: %__MODULE__{
          bitrate: bitrate_t,
          channels: channels_t,
          fec_available: fec_available_t
        }

  @enforce_keys [
    :bitrate,
    :channels,
    :fec_available
  ]
  defstruct @enforce_keys
end
