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

defmodule GoogleApi.Run.V1.Model.Service do
  @moduledoc """
  Service acts as a top-level container that manages a set of Routes and
  Configurations which implement a network service. Service exists to provide a
  singular abstraction which can be access controlled, reasoned about, and
  which encapsulates software lifecycle decisions such as rollout policy and
  team resource ownership. Service acts only as an orchestrator of the
  underlying Routes and Configurations (much as a kubernetes Deployment
  orchestrates ReplicaSets).

  The Service's controller will track the statuses of its owned Configuration
  and Route, reflecting their statuses and conditions as its own.

  See also:
  https://github.com/knative/serving/blob/master/docs/spec/overview.md#service

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - The API version for this call such as "serving.knative.dev/v1".
  *   `kind` (*type:* `String.t`, *default:* `nil`) - The kind of resource, in this case "Service".
  *   `metadata` (*type:* `GoogleApi.Run.V1.Model.ObjectMeta.t`, *default:* `nil`) - Metadata associated with this Service, including name, namespace, labels,
      and annotations.
  *   `spec` (*type:* `GoogleApi.Run.V1.Model.ServiceSpec.t`, *default:* `nil`) - Spec holds the desired state of the Service (from the client).
  *   `status` (*type:* `GoogleApi.Run.V1.Model.ServiceStatus.t`, *default:* `nil`) - Status communicates the observed state of the Service (from the
      controller).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :kind => String.t(),
          :metadata => GoogleApi.Run.V1.Model.ObjectMeta.t(),
          :spec => GoogleApi.Run.V1.Model.ServiceSpec.t(),
          :status => GoogleApi.Run.V1.Model.ServiceStatus.t()
        }

  field(:apiVersion)
  field(:kind)
  field(:metadata, as: GoogleApi.Run.V1.Model.ObjectMeta)
  field(:spec, as: GoogleApi.Run.V1.Model.ServiceSpec)
  field(:status, as: GoogleApi.Run.V1.Model.ServiceStatus)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.Service do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.Service.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.Service do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end