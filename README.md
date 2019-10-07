# Membrane Multimedia Framework: Opus audio format definition

This package provides Opus audio format definition (so-called caps) for the
[Membrane Multimedia Framework](https://membraneframework.org).

# Installation

Unless you're developing an Membrane Element it's unlikely that you need to
use this package directly in your app, as normally it is going to be fetched as
a dependency of any element that operates on FLAC encoded audio.

However, if you are developing an Element or need to add it due to any other
reason, just add the following line to your `deps` in the `mix.exs` and run
`mix deps.get`.

```elixir
{:membrane_caps_audio_flac, "~> 0.1", github: "membraneframework/membrane-caps-audio-opus"}
```

## Copyright and License

Copyright 2019, [Software Mansion](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane-caps-audio-opus)

[![Software Mansion](https://membraneframework.github.io/static/logo/swm_logo_readme.png)](https://swmansion.com/?utm_source=git&utm_medium=readme&utm_campaign=membrane-caps-audio-opus)

Licensed under the [Apache License, Version 2.0](LICENSE)
