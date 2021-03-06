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

defmodule GoogleApi.Sheets.V4.Model.SlicerSpec do
  @moduledoc """
  The specifications of a slicer.

  ## Attributes

  *   `applyToPivotTables` (*type:* `boolean()`, *default:* `nil`) - True if the filter should apply to pivot tables.
      If not set, default to `True`.
  *   `backgroundColor` (*type:* `GoogleApi.Sheets.V4.Model.Color.t`, *default:* `nil`) - The background color of the slicer.
  *   `backgroundColorStyle` (*type:* `GoogleApi.Sheets.V4.Model.ColorStyle.t`, *default:* `nil`) - The background color of the slicer.
      If background_color is also set, this field takes precedence.
  *   `columnIndex` (*type:* `integer()`, *default:* `nil`) - The column index in the data table on which the filter is applied to.
  *   `dataRange` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The data range of the slicer.
  *   `filterCriteria` (*type:* `GoogleApi.Sheets.V4.Model.FilterCriteria.t`, *default:* `nil`) - The filtering criteria of the slicer.
  *   `horizontalAlignment` (*type:* `String.t`, *default:* `nil`) - The horizontal alignment of title in the slicer.
      If unspecified, defaults to `LEFT`
  *   `textFormat` (*type:* `GoogleApi.Sheets.V4.Model.TextFormat.t`, *default:* `nil`) - The text format of title in the slicer.
  *   `title` (*type:* `String.t`, *default:* `nil`) - The title of the slicer.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applyToPivotTables => boolean(),
          :backgroundColor => GoogleApi.Sheets.V4.Model.Color.t(),
          :backgroundColorStyle => GoogleApi.Sheets.V4.Model.ColorStyle.t(),
          :columnIndex => integer(),
          :dataRange => GoogleApi.Sheets.V4.Model.GridRange.t(),
          :filterCriteria => GoogleApi.Sheets.V4.Model.FilterCriteria.t(),
          :horizontalAlignment => String.t(),
          :textFormat => GoogleApi.Sheets.V4.Model.TextFormat.t(),
          :title => String.t()
        }

  field(:applyToPivotTables)
  field(:backgroundColor, as: GoogleApi.Sheets.V4.Model.Color)
  field(:backgroundColorStyle, as: GoogleApi.Sheets.V4.Model.ColorStyle)
  field(:columnIndex)
  field(:dataRange, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:filterCriteria, as: GoogleApi.Sheets.V4.Model.FilterCriteria)
  field(:horizontalAlignment)
  field(:textFormat, as: GoogleApi.Sheets.V4.Model.TextFormat)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.SlicerSpec do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.SlicerSpec.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.SlicerSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
