# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.AndroidEnterprise.V1.Model.WebAppIcon do
  @moduledoc """
  Icon for a web app.

  ## Attributes

  - imageData (String.t): The actual bytes of the image in a base64url encoded string (c.f. RFC4648, section 5 \&quot;Base 64 Encoding with URL and Filename Safe Alphabet\&quot;).   - The image type can be png or jpg. - The image should ideally be square. - The image should ideally have a size of 512x512. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :imageData => any()
        }

  field(:imageData)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidEnterprise.V1.Model.WebAppIcon do
  def decode(value, options) do
    GoogleApi.AndroidEnterprise.V1.Model.WebAppIcon.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidEnterprise.V1.Model.WebAppIcon do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
