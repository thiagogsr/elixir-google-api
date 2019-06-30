# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.DFAReporting.V33.Model.CreativeAssetId do
  @moduledoc """
  Creative Asset ID.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the creative asset. This is a required field while inserting an asset. After insertion, this assetIdentifier is used to identify the uploaded asset. Characters in the name must be alphanumeric or one of the following: ".-_ ". Spaces are allowed.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of asset to upload. This is a required field. FLASH and IMAGE are no longer supported for new uploads. All image assets should use HTML_IMAGE.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t(),
          :type => String.t()
        }

  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.CreativeAssetId do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.CreativeAssetId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.CreativeAssetId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end