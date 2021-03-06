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

defmodule GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Study do
  @moduledoc """
  A message representing a Study.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the study was created.
  *   `inactiveReason` (*type:* `String.t`, *default:* `nil`) - Output only. A human readable reason why the Study is inactive.
      This should be empty if a study is ACTIVE or COMPLETED.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The name of a study.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The detailed state of a study.
  *   `studyConfig` (*type:* `GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig.t`, *default:* `nil`) - Required. Configuration of the study.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t(),
          :inactiveReason => String.t(),
          :name => String.t(),
          :state => String.t(),
          :studyConfig => GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig.t()
        }

  field(:createTime, as: DateTime)
  field(:inactiveReason)
  field(:name)
  field(:state)
  field(:studyConfig, as: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_StudyConfig)
end

defimpl Poison.Decoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Study do
  def decode(value, options) do
    GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Study.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MachineLearning.V1.Model.GoogleCloudMlV1_Study do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
