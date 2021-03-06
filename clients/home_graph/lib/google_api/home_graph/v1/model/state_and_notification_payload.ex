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

defmodule GoogleApi.HomeGraph.V1.Model.StateAndNotificationPayload do
  @moduledoc """
  Payload containing the state and notification information for devices.

  ## Attributes

  *   `devices` (*type:* `GoogleApi.HomeGraph.V1.Model.ReportStateAndNotificationDevice.t`, *default:* `nil`) - The devices for updating state and sending notifications.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :devices => GoogleApi.HomeGraph.V1.Model.ReportStateAndNotificationDevice.t()
        }

  field(:devices, as: GoogleApi.HomeGraph.V1.Model.ReportStateAndNotificationDevice)
end

defimpl Poison.Decoder, for: GoogleApi.HomeGraph.V1.Model.StateAndNotificationPayload do
  def decode(value, options) do
    GoogleApi.HomeGraph.V1.Model.StateAndNotificationPayload.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HomeGraph.V1.Model.StateAndNotificationPayload do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
