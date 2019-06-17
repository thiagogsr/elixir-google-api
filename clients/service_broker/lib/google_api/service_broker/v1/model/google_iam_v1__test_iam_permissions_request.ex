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

defmodule GoogleApi.ServiceBroker.V1.Model.GoogleIamV1_TestIamPermissionsRequest do
  @moduledoc """
  Request message for `TestIamPermissions` method.

  ## Attributes

  - permissions (list(String.t)): The set of permissions to check for the `resource`. Permissions with
  wildcards (such as '*' or 'storage.*') are not allowed. For more
  information see
  [IAM Overview](https://cloud.google.com/iam/docs/overview#permissions). Defaults to `nil`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :permissions => list(String.t())
        }

  field(:permissions, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.ServiceBroker.V1.Model.GoogleIamV1_TestIamPermissionsRequest do
  def decode(value, options) do
    GoogleApi.ServiceBroker.V1.Model.GoogleIamV1_TestIamPermissionsRequest.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ServiceBroker.V1.Model.GoogleIamV1_TestIamPermissionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
