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

defmodule GoogleApi.Jobs.V2.Model.CustomAttributeHistogramRequest do
  @moduledoc """
  Custom attributes histogram request. An error will be thrown if neither string_value_histogram or long_value_histogram_bucketing_option has been defined.

  ## Attributes

  - key (String.t): Required.  Specifies the custom field key to perform a histogram on. If specified without &#x60;long_value_histogram_bucketing_option&#x60;, histogram on string values of the given &#x60;key&#x60; is triggered, otherwise histogram is performed on long values. Defaults to: `null`.
  - longValueHistogramBucketingOption (NumericBucketingOption): Optional.  Specifies buckets used to perform a range histogram on Job&#39;s filterable long custom field values, or min/max value requirements. Defaults to: `null`.
  - stringValueHistogram (boolean()): Optional. If set to true, the response will include the histogram value for each key as a string. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :key => any(),
          :longValueHistogramBucketingOption => GoogleApi.Jobs.V2.Model.NumericBucketingOption.t(),
          :stringValueHistogram => any()
        }

  field(:key)
  field(:longValueHistogramBucketingOption, as: GoogleApi.Jobs.V2.Model.NumericBucketingOption)
  field(:stringValueHistogram)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.CustomAttributeHistogramRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.CustomAttributeHistogramRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.CustomAttributeHistogramRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
