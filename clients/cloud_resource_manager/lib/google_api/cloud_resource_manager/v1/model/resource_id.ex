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

defmodule GoogleApi.CloudResourceManager.V1.Model.ResourceId do
  @moduledoc """
  A container to reference an id for any resource type. A `resource` in Google
  Cloud Platform is a generic term for something you (a developer) may want to
  interact with through one of our API's. Some examples are an App Engine app,
  a Compute Engine instance, a Cloud SQL database, and so on.

  ## Attributes

  *   `id` (*type:* `String.t`, *default:* `nil`) - Required field for the type-specific id. This should correspond to the id
      used in the type-specific API's.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required field representing the resource type this id is for.
      At present, the valid types are: "organization", "folder", and "project".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :id => String.t(),
          :type => String.t()
        }

  field(:id)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.CloudResourceManager.V1.Model.ResourceId do
  def decode(value, options) do
    GoogleApi.CloudResourceManager.V1.Model.ResourceId.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudResourceManager.V1.Model.ResourceId do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
