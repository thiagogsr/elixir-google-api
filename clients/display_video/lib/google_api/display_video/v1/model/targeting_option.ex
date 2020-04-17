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

defmodule GoogleApi.DisplayVideo.V1.Model.TargetingOption do
  @moduledoc """
  Represents a single targeting option, which is a targetable concept in
  DV360.

  ## Attributes

  *   `ageRangeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AgeRangeTargetingOptionDetails.t`, *default:* `nil`) - Age range details.
  *   `appCategoryDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AppCategoryTargetingOptionDetails.t`, *default:* `nil`) - App category details.
  *   `authorizedSellerStatusDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.AuthorizedSellerStatusTargetingOptionDetails.t`, *default:* `nil`) - Authorized seller status resource details.
  *   `browserDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.BrowserTargetingOptionDetails.t`, *default:* `nil`) - Browser details.
  *   `carrierAndIspDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.CarrierAndIspTargetingOptionDetails.t`, *default:* `nil`) - Carrier and ISP details.
  *   `categoryDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.CategoryTargetingOptionDetails.t`, *default:* `nil`) - Category resource details.
  *   `contentInstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ContentInstreamPositionTargetingOptionDetails.t`, *default:* `nil`) - Content instream position details.
  *   `contentOutstreamPositionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionTargetingOptionDetails.t`, *default:* `nil`) - Content outstream position details.
  *   `deviceMakeModelDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.DeviceMakeModelTargetingOptionDetails.t`, *default:* `nil`) - Device make and model resource details.
  *   `deviceTypeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.DeviceTypeTargetingOptionDetails.t`, *default:* `nil`) - Device type details.
  *   `digitalContentLabelDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelTargetingOptionDetails.t`, *default:* `nil`) - Digital content label details.
  *   `environmentDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.EnvironmentTargetingOptionDetails.t`, *default:* `nil`) - Environment details.
  *   `exchangeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ExchangeTargetingOptionDetails.t`, *default:* `nil`) - Exchange details.
  *   `genderDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.GenderTargetingOptionDetails.t`, *default:* `nil`) - Gender details.
  *   `geoRegionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.GeoRegionTargetingOptionDetails.t`, *default:* `nil`) - Geographic region resource details.
  *   `householdIncomeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.HouseholdIncomeTargetingOptionDetails.t`, *default:* `nil`) - Household income details.
  *   `languageDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.LanguageTargetingOptionDetails.t`, *default:* `nil`) - Language resource details.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name for this targeting option.
  *   `onScreenPositionDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.OnScreenPositionTargetingOptionDetails.t`, *default:* `nil`) - On screen position details.
  *   `operatingSystemDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.OperatingSystemTargetingOptionDetails.t`, *default:* `nil`) - Operating system resources details.
  *   `parentalStatusDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ParentalStatusTargetingOptionDetails.t`, *default:* `nil`) - Parental status details.
  *   `sensitiveCategoryDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.SensitiveCategoryTargetingOptionDetails.t`, *default:* `nil`) - Sensitive Category details.
  *   `subExchangeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.SubExchangeTargetingOptionDetails.t`, *default:* `nil`) - Sub-exchange details.
  *   `targetingOptionId` (*type:* `String.t`, *default:* `nil`) - Output only. A unique identifier for this targeting option. The tuple
      {`targeting_type`, `targeting_option_id`} will be unique.
  *   `targetingType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of this targeting option.
  *   `userRewardedContentDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.UserRewardedContentTargetingOptionDetails.t`, *default:* `nil`) - User rewarded content details.
  *   `videoPlayerSizeDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeTargetingOptionDetails.t`, *default:* `nil`) - Video player size details.
  *   `viewabilityDetails` (*type:* `GoogleApi.DisplayVideo.V1.Model.ViewabilityTargetingOptionDetails.t`, *default:* `nil`) - Viewability resource details.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ageRangeDetails => GoogleApi.DisplayVideo.V1.Model.AgeRangeTargetingOptionDetails.t(),
          :appCategoryDetails =>
            GoogleApi.DisplayVideo.V1.Model.AppCategoryTargetingOptionDetails.t(),
          :authorizedSellerStatusDetails =>
            GoogleApi.DisplayVideo.V1.Model.AuthorizedSellerStatusTargetingOptionDetails.t(),
          :browserDetails => GoogleApi.DisplayVideo.V1.Model.BrowserTargetingOptionDetails.t(),
          :carrierAndIspDetails =>
            GoogleApi.DisplayVideo.V1.Model.CarrierAndIspTargetingOptionDetails.t(),
          :categoryDetails => GoogleApi.DisplayVideo.V1.Model.CategoryTargetingOptionDetails.t(),
          :contentInstreamPositionDetails =>
            GoogleApi.DisplayVideo.V1.Model.ContentInstreamPositionTargetingOptionDetails.t(),
          :contentOutstreamPositionDetails =>
            GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionTargetingOptionDetails.t(),
          :deviceMakeModelDetails =>
            GoogleApi.DisplayVideo.V1.Model.DeviceMakeModelTargetingOptionDetails.t(),
          :deviceTypeDetails =>
            GoogleApi.DisplayVideo.V1.Model.DeviceTypeTargetingOptionDetails.t(),
          :digitalContentLabelDetails =>
            GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelTargetingOptionDetails.t(),
          :environmentDetails =>
            GoogleApi.DisplayVideo.V1.Model.EnvironmentTargetingOptionDetails.t(),
          :exchangeDetails => GoogleApi.DisplayVideo.V1.Model.ExchangeTargetingOptionDetails.t(),
          :genderDetails => GoogleApi.DisplayVideo.V1.Model.GenderTargetingOptionDetails.t(),
          :geoRegionDetails =>
            GoogleApi.DisplayVideo.V1.Model.GeoRegionTargetingOptionDetails.t(),
          :householdIncomeDetails =>
            GoogleApi.DisplayVideo.V1.Model.HouseholdIncomeTargetingOptionDetails.t(),
          :languageDetails => GoogleApi.DisplayVideo.V1.Model.LanguageTargetingOptionDetails.t(),
          :name => String.t(),
          :onScreenPositionDetails =>
            GoogleApi.DisplayVideo.V1.Model.OnScreenPositionTargetingOptionDetails.t(),
          :operatingSystemDetails =>
            GoogleApi.DisplayVideo.V1.Model.OperatingSystemTargetingOptionDetails.t(),
          :parentalStatusDetails =>
            GoogleApi.DisplayVideo.V1.Model.ParentalStatusTargetingOptionDetails.t(),
          :sensitiveCategoryDetails =>
            GoogleApi.DisplayVideo.V1.Model.SensitiveCategoryTargetingOptionDetails.t(),
          :subExchangeDetails =>
            GoogleApi.DisplayVideo.V1.Model.SubExchangeTargetingOptionDetails.t(),
          :targetingOptionId => String.t(),
          :targetingType => String.t(),
          :userRewardedContentDetails =>
            GoogleApi.DisplayVideo.V1.Model.UserRewardedContentTargetingOptionDetails.t(),
          :videoPlayerSizeDetails =>
            GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeTargetingOptionDetails.t(),
          :viewabilityDetails =>
            GoogleApi.DisplayVideo.V1.Model.ViewabilityTargetingOptionDetails.t()
        }

  field(:ageRangeDetails, as: GoogleApi.DisplayVideo.V1.Model.AgeRangeTargetingOptionDetails)

  field(:appCategoryDetails, as: GoogleApi.DisplayVideo.V1.Model.AppCategoryTargetingOptionDetails)

  field(:authorizedSellerStatusDetails,
    as: GoogleApi.DisplayVideo.V1.Model.AuthorizedSellerStatusTargetingOptionDetails
  )

  field(:browserDetails, as: GoogleApi.DisplayVideo.V1.Model.BrowserTargetingOptionDetails)

  field(:carrierAndIspDetails,
    as: GoogleApi.DisplayVideo.V1.Model.CarrierAndIspTargetingOptionDetails
  )

  field(:categoryDetails, as: GoogleApi.DisplayVideo.V1.Model.CategoryTargetingOptionDetails)

  field(:contentInstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ContentInstreamPositionTargetingOptionDetails
  )

  field(:contentOutstreamPositionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ContentOutstreamPositionTargetingOptionDetails
  )

  field(:deviceMakeModelDetails,
    as: GoogleApi.DisplayVideo.V1.Model.DeviceMakeModelTargetingOptionDetails
  )

  field(:deviceTypeDetails, as: GoogleApi.DisplayVideo.V1.Model.DeviceTypeTargetingOptionDetails)

  field(:digitalContentLabelDetails,
    as: GoogleApi.DisplayVideo.V1.Model.DigitalContentLabelTargetingOptionDetails
  )

  field(:environmentDetails, as: GoogleApi.DisplayVideo.V1.Model.EnvironmentTargetingOptionDetails)

  field(:exchangeDetails, as: GoogleApi.DisplayVideo.V1.Model.ExchangeTargetingOptionDetails)
  field(:genderDetails, as: GoogleApi.DisplayVideo.V1.Model.GenderTargetingOptionDetails)
  field(:geoRegionDetails, as: GoogleApi.DisplayVideo.V1.Model.GeoRegionTargetingOptionDetails)

  field(:householdIncomeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.HouseholdIncomeTargetingOptionDetails
  )

  field(:languageDetails, as: GoogleApi.DisplayVideo.V1.Model.LanguageTargetingOptionDetails)
  field(:name)

  field(:onScreenPositionDetails,
    as: GoogleApi.DisplayVideo.V1.Model.OnScreenPositionTargetingOptionDetails
  )

  field(:operatingSystemDetails,
    as: GoogleApi.DisplayVideo.V1.Model.OperatingSystemTargetingOptionDetails
  )

  field(:parentalStatusDetails,
    as: GoogleApi.DisplayVideo.V1.Model.ParentalStatusTargetingOptionDetails
  )

  field(:sensitiveCategoryDetails,
    as: GoogleApi.DisplayVideo.V1.Model.SensitiveCategoryTargetingOptionDetails
  )

  field(:subExchangeDetails, as: GoogleApi.DisplayVideo.V1.Model.SubExchangeTargetingOptionDetails)

  field(:targetingOptionId)
  field(:targetingType)

  field(:userRewardedContentDetails,
    as: GoogleApi.DisplayVideo.V1.Model.UserRewardedContentTargetingOptionDetails
  )

  field(:videoPlayerSizeDetails,
    as: GoogleApi.DisplayVideo.V1.Model.VideoPlayerSizeTargetingOptionDetails
  )

  field(:viewabilityDetails, as: GoogleApi.DisplayVideo.V1.Model.ViewabilityTargetingOptionDetails)
end

defimpl Poison.Decoder, for: GoogleApi.DisplayVideo.V1.Model.TargetingOption do
  def decode(value, options) do
    GoogleApi.DisplayVideo.V1.Model.TargetingOption.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DisplayVideo.V1.Model.TargetingOption do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end