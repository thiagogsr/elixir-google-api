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

defmodule GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest do
  @moduledoc """


  ## Attributes

  *   `icon` (*type:* `String.t`, *default:* `nil`) - The raw icon bytes user-supplied to be uploaded to the product. The format
      of the icon can only be PNG or JPEG. The minimum allowed dimensions are
      130x130 pixels and the maximum dimensions are 10000x10000 pixels.
      Required.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :icon => String.t()
        }

  field(:icon)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest do
  def decode(value, options) do
    GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudPrivateCatalogProducer.V1beta1.Model.GoogleCloudPrivatecatalogproducerV1beta1UploadIconRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
