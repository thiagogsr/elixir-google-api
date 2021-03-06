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

defmodule GoogleApi.PlusDomains.V1.Model.MediaAuthor do
  @moduledoc """
  The person who uploaded this media.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The author's name.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of the author.
  *   `image` (*type:* `GoogleApi.PlusDomains.V1.Model.MediaAuthorImage.t`, *default:* `nil`) - The author's Google profile image.
  *   `url` (*type:* `String.t`, *default:* `nil`) - A link to the author's Google profile.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t(),
          :id => String.t(),
          :image => GoogleApi.PlusDomains.V1.Model.MediaAuthorImage.t(),
          :url => String.t()
        }

  field(:displayName)
  field(:id)
  field(:image, as: GoogleApi.PlusDomains.V1.Model.MediaAuthorImage)
  field(:url)
end

defimpl Poison.Decoder, for: GoogleApi.PlusDomains.V1.Model.MediaAuthor do
  def decode(value, options) do
    GoogleApi.PlusDomains.V1.Model.MediaAuthor.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlusDomains.V1.Model.MediaAuthor do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
