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

defmodule GoogleApi.DNS.V1.Api.ResourceRecordSets do
  @moduledoc """
  API calls for all endpoints tagged `ResourceRecordSets`.
  """

  alias GoogleApi.DNS.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Enumerate ResourceRecordSets that have been created but not yet deleted.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.DNS.V1.Connection.t`) - Connection to server
  *   `project` (*type:* `String.t`) - Identifies the project addressed by this request.
  *   `managed_zone` (*type:* `String.t`) - Identifies the managed zone addressed by this request. Can be the managed zone name or id.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - Optional. Maximum number of results to be returned. If unspecified, the server will decide how many results to return.
      *   `:name` (*type:* `String.t`) - Restricts the list to return only records with this fully qualified domain name.
      *   `:pageToken` (*type:* `String.t`) - Optional. A tag returned by a previous list request that was truncated. Use this parameter to continue a previous list request.
      *   `:type` (*type:* `String.t`) - Restricts the list to return only records of this type. If present, the "name" parameter must also be present.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.DNS.V1.Model.ResourceRecordSetsListResponse{}}` on success
  *   `{:error, info}` on failure
  """
  @spec dns_resource_record_sets_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok, GoogleApi.DNS.V1.Model.ResourceRecordSetsListResponse.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def dns_resource_record_sets_list(
        connection,
        project,
        managed_zone,
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
      :userIp => :query,
      :maxResults => :query,
      :name => :query,
      :pageToken => :query,
      :type => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{project}/managedZones/{managedZone}/rrsets", %{
        "project" => URI.encode(project, &URI.char_unreserved?/1),
        "managedZone" => URI.encode(managed_zone, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DNS.V1.Model.ResourceRecordSetsListResponse{}])
  end
end
