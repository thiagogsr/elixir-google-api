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

defmodule GoogleApi.Docs.V1.Model.PositionedObjectPositioning do
  @moduledoc """
  The positioning of a PositionedObject. The positioned object is positioned
  relative to the beginning of the Paragraph
  it is tethered to.

  ## Attributes

  *   `layout` (*type:* `String.t`, *default:* `nil`) - The layout of this positioned object.
  *   `leftOffset` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The offset of the left edge of the positioned object relative to the
      beginning of the Paragraph it is tethered
      to. The exact positioning of the object can depend on other content in the
      document and the document's styling.
  *   `topOffset` (*type:* `GoogleApi.Docs.V1.Model.Dimension.t`, *default:* `nil`) - The offset of the top edge of the positioned object relative to the
      beginning of the Paragraph it is tethered
      to. The exact positioning of the object can depend on other content in the
      document and the document's styling.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :layout => String.t(),
          :leftOffset => GoogleApi.Docs.V1.Model.Dimension.t(),
          :topOffset => GoogleApi.Docs.V1.Model.Dimension.t()
        }

  field(:layout)
  field(:leftOffset, as: GoogleApi.Docs.V1.Model.Dimension)
  field(:topOffset, as: GoogleApi.Docs.V1.Model.Dimension)
end

defimpl Poison.Decoder, for: GoogleApi.Docs.V1.Model.PositionedObjectPositioning do
  def decode(value, options) do
    GoogleApi.Docs.V1.Model.PositionedObjectPositioning.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Docs.V1.Model.PositionedObjectPositioning do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end