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

defmodule GoogleApi.DFAReporting.V34.Api.EventTags do
  @moduledoc """
  API calls for all endpoints tagged `EventTags`.
  """

  alias GoogleApi.DFAReporting.V34.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Deletes an existing event tag.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V34.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `id` (*type:* `String.t`) - Event tag ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_event_tags_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, nil} | {:ok, Tesla.Env.t()} | {:error, any()}
  def dfareporting_event_tags_delete(
        connection,
        profile_id,
        id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/dfareporting/v3.4/userprofiles/{profileId}/eventTags/{id}", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [decode: false])
  end

  @doc """
  Gets one event tag by ID.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V34.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `id` (*type:* `String.t`) - Event tag ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V34.Model.EventTag{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_event_tags_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V34.Model.EventTag.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_event_tags_get(connection, profile_id, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v3.4/userprofiles/{profileId}/eventTags/{id}", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1),
        "id" => URI.encode(id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V34.Model.EventTag{}])
  end

  @doc """
  Inserts a new event tag.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V34.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V34.Model.EventTag.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V34.Model.EventTag{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_event_tags_insert(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V34.Model.EventTag.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_event_tags_insert(connection, profile_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/dfareporting/v3.4/userprofiles/{profileId}/eventTags", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V34.Model.EventTag{}])
  end

  @doc """
  Retrieves a list of event tags, possibly filtered.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V34.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:adId` (*type:* `String.t`) - Select only event tags that belong to this ad.
      *   `:advertiserId` (*type:* `String.t`) - Select only event tags that belong to this advertiser.
      *   `:campaignId` (*type:* `String.t`) - Select only event tags that belong to this campaign.
      *   `:definitionsOnly` (*type:* `boolean()`) - Examine only the specified campaign or advertiser's event tags for matching selector criteria. When set to false, the parent advertiser and parent campaign of the specified ad or campaign is examined as well. In addition, when set to false, the status field is examined as well, along with the enabledByDefault field. This parameter can not be set to true when adId is specified as ads do not define their own even tags.
      *   `:enabled` (*type:* `boolean()`) - Select only enabled event tags. What is considered enabled or disabled depends on the definitionsOnly parameter. When definitionsOnly is set to true, only the specified advertiser or campaign's event tags' enabledByDefault field is examined. When definitionsOnly is set to false, the specified ad or specified campaign's parent advertiser's or parent campaign's event tags' enabledByDefault and status fields are examined as well.
      *   `:eventTagTypes` (*type:* `list(String.t)`) - Select only event tags with the specified event tag types. Event tag types can be used to specify whether to use a third-party pixel, a third-party JavaScript URL, or a third-party click-through URL for either impression or click tracking.
      *   `:ids` (*type:* `list(String.t)`) - Select only event tags with these IDs.
      *   `:searchString` (*type:* `String.t`) - Allows searching for objects by name or ID. Wildcards (*) are allowed. For example, "eventtag*2015" will return objects with names like "eventtag June 2015", "eventtag April 2015", or simply "eventtag 2015". Most of the searches also add wildcards implicitly at the start and the end of the search string. For example, a search string of "eventtag" will match objects with name "my eventtag", "eventtag 2015", or simply "eventtag".
      *   `:sortField` (*type:* `String.t`) - Field by which to sort the list.
      *   `:sortOrder` (*type:* `String.t`) - Order of sorted results.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V34.Model.EventTagsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_event_tags_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V34.Model.EventTagsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_event_tags_list(connection, profile_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :adId => :query,
      :advertiserId => :query,
      :campaignId => :query,
      :definitionsOnly => :query,
      :enabled => :query,
      :eventTagTypes => :query,
      :ids => :query,
      :searchString => :query,
      :sortField => :query,
      :sortOrder => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/dfareporting/v3.4/userprofiles/{profileId}/eventTags", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.DFAReporting.V34.Model.EventTagsListResponse{}]
    )
  end

  @doc """
  Updates an existing event tag. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V34.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `id` (*type:* `String.t`) - Event tag ID.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V34.Model.EventTag.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V34.Model.EventTag{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_event_tags_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DFAReporting.V34.Model.EventTag.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_event_tags_patch(connection, profile_id, id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/dfareporting/v3.4/userprofiles/{profileId}/eventTags", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :id, id)
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V34.Model.EventTag{}])
  end

  @doc """
  Updates an existing event tag.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DFAReporting.V34.Connection.t`) - Connection to server
  *   `profile_id` (*type:* `String.t`) - User profile ID associated with this request.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.DFAReporting.V34.Model.EventTag.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DFAReporting.V34.Model.EventTag{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dfareporting_event_tags_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.DFAReporting.V34.Model.EventTag.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dfareporting_event_tags_update(connection, profile_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/dfareporting/v3.4/userprofiles/{profileId}/eventTags", %{
        "profileId" => URI.encode(profile_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DFAReporting.V34.Model.EventTag{}])
  end
end
