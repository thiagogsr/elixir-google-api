# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechResponse do
  @moduledoc """
  The message returned to the client by the `SynthesizeSpeech` method.

  ## Attributes

  *   `audioContent` (*type:* `String.t`, *default:* `nil`) - The audio data bytes encoded as specified in the request, including the
      header for encodings that are wrapped in containers (e.g. MP3, OGG_OPUS).
      For LINEAR16 audio, we include the WAV header. Note: as
      with all bytes fields, protobuffers use a pure binary representation,
      whereas JSON representations use base64.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioContent => String.t()
        }

  field(:audioContent)
end

defimpl Poison.Decoder, for: GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechResponse do
  def decode(value, options) do
    GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TextToSpeech.V1.Model.SynthesizeSpeechResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end