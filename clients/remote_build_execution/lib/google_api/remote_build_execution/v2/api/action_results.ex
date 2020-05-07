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

defmodule GoogleApi.RemoteBuildExecution.V2.Api.ActionResults do
  @moduledoc """
  API calls for all endpoints tagged `ActionResults`.
  """

  alias GoogleApi.RemoteBuildExecution.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @library_version Mix.Project.config() |> Keyword.get(:version, "")

  @doc """
  Retrieve a cached execution result.

  Implementations SHOULD ensure that any blobs referenced from the
  ContentAddressableStorage
  are available at the time of returning the
  ActionResult and will be
  for some period of time afterwards. The TTLs of the referenced blobs SHOULD be increased
  if necessary and applicable.

  Errors:

  * `NOT_FOUND`: The requested `ActionResult` is not in the cache.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `hash` (*type:* `String.t`) - The hash. In the case of SHA-256, it will always be a lowercase hex string
      exactly 64 characters long.
  *   `size_bytes` (*type:* `String.t`) - The size of the blob, in bytes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:inlineOutputFiles` (*type:* `list(String.t)`) - A hint to the server to inline the contents of the listed output files.
          Each path needs to exactly match one path in `output_files` in the
          Command message.
      *   `:inlineStderr` (*type:* `boolean()`) - A hint to the server to request inlining stderr in the
          ActionResult message.
      *   `:inlineStdout` (*type:* `boolean()`) - A hint to the server to request inlining stdout in the
          ActionResult message.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_action_results_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def remotebuildexecution_action_results_get(
        connection,
        instance_name,
        hash,
        size_bytes,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :inlineOutputFiles => :query,
      :inlineStderr => :query,
      :inlineStdout => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v2/{+instanceName}/actionResults/{hash}/{sizeBytes}", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1),
        "hash" => URI.encode(hash, &URI.char_unreserved?/1),
        "sizeBytes" => URI.encode(size_bytes, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult{}
        ]
    )
  end

  @doc """
  Upload a new execution result.

  In order to allow the server to perform access control based on the type of
  action, and to assist with client debugging, the client MUST first upload
  the Action that produced the
  result, along with its
  Command, into the
  `ContentAddressableStorage`.

  Errors:

  * `INVALID_ARGUMENT`: One or more arguments are invalid.
  * `FAILED_PRECONDITION`: One or more errors occurred in updating the
    action result, such as a missing command or action.
  * `RESOURCE_EXHAUSTED`: There is insufficient storage space to add the
    entry to the cache.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.RemoteBuildExecution.V2.Connection.t`) - Connection to server
  *   `instance_name` (*type:* `String.t`) - The instance of the execution system to operate against. A server may
      support multiple instances of the execution system (with their own workers,
      storage, caches, etc.). The server MAY require use of this field to select
      between them in an implementation-defined fashion, otherwise it can be
      omitted.
  *   `hash` (*type:* `String.t`) - The hash. In the case of SHA-256, it will always be a lowercase hex string
      exactly 64 characters long.
  *   `size_bytes` (*type:* `String.t`) - The size of the blob, in bytes.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:"$.xgafv"` (*type:* `String.t`) - V1 error format.
      *   `:access_token` (*type:* `String.t`) - OAuth access token.
      *   `:alt` (*type:* `String.t`) - Data format for response.
      *   `:callback` (*type:* `String.t`) - JSONP
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
      *   `:uploadType` (*type:* `String.t`) - Legacy upload protocol for media (e.g. "media", "multipart").
      *   `:upload_protocol` (*type:* `String.t`) - Upload protocol for media (e.g. "raw", "multipart").
      *   `:"resultsCachePolicy.priority"` (*type:* `integer()`) - The priority (relative importance) of this content in the overall cache.
          Generally, a lower value means a longer retention time or other advantage,
          but the interpretation of a given value is server-dependent. A priority of
          0 means a *default* value, decided by the server.

          The particular semantics of this field is up to the server. In particular,
          every server will have their own supported range of priorities, and will
          decide how these map into retention/eviction policy.
      *   `:body` (*type:* `GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult{}}` on success
  *   `{:error, info}` on failure
  """
  @spec remotebuildexecution_action_results_update(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) ::
          {:ok,
           GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult.t()}
          | {:ok, Tesla.Env.t()}
          | {:error, any()}
  def remotebuildexecution_action_results_update(
        connection,
        instance_name,
        hash,
        size_bytes,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :"$.xgafv" => :query,
      :access_token => :query,
      :alt => :query,
      :callback => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :uploadType => :query,
      :upload_protocol => :query,
      :"resultsCachePolicy.priority" => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/v2/{+instanceName}/actionResults/{hash}/{sizeBytes}", %{
        "instanceName" => URI.encode(instance_name, &URI.char_unreserved?/1),
        "hash" => URI.encode(hash, &URI.char_unreserved?/1),
        "sizeBytes" => URI.encode(size_bytes, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)
      |> Request.library_version(@library_version)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++
        [
          struct:
            %GoogleApi.RemoteBuildExecution.V2.Model.BuildBazelRemoteExecutionV2ActionResult{}
        ]
    )
  end
end
