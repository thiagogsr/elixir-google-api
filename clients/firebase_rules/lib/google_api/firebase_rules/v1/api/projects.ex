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

defmodule GoogleApi.FirebaseRules.V1.Api.Projects do
  @moduledoc """
  API calls for all endpoints tagged `Projects`.
  """

  alias GoogleApi.FirebaseRules.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Create a &#x60;Release&#x60;.  Release names should reflect the developer&#39;s deployment practices. For example, the release name may include the environment name, application name, application version, or any other name meaningful to the developer. Once a &#x60;Release&#x60; refers to a &#x60;Ruleset&#x60;, the rules can be enforced by Firebase Rules-enabled services.  More than one &#x60;Release&#x60; may be &#39;live&#39; concurrently. Consider the following three &#x60;Release&#x60; names for &#x60;projects/foo&#x60; and the &#x60;Ruleset&#x60; to which they refer.  Release Name                    | Ruleset Name --------------------------------|------------- projects/foo/releases/prod      | projects/foo/rulesets/uuid123 projects/foo/releases/prod/beta | projects/foo/rulesets/uuid123 projects/foo/releases/prod/v23  | projects/foo/rulesets/uuid456  The table reflects the &#x60;Ruleset&#x60; rollout in progress. The &#x60;prod&#x60; and &#x60;prod/beta&#x60; releases refer to the same &#x60;Ruleset&#x60;. However, &#x60;prod/v23&#x60; refers to a new &#x60;Ruleset&#x60;. The &#x60;Ruleset&#x60; reference for a &#x60;Release&#x60; may be updated using the UpdateRelease method.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name for the project which owns this &#x60;Release&#x60;.  Format: &#x60;projects/{project_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (Release): 

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.Release{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_releases_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.Release.t()} | {:error, Tesla.Env.t()}
  def firebaserules_projects_releases_create(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}/releases", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.Release{}])
  end

  @doc """
  Delete a &#x60;Release&#x60; by resource name.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name for the &#x60;Release&#x60; to delete.  Format: &#x60;projects/{project_id}/releases/{release_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.Empty{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_releases_delete(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.Empty.t()} | {:error, Tesla.Env.t()}
  def firebaserules_projects_releases_delete(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.Empty{}])
  end

  @doc """
  Get a &#x60;Release&#x60; by name.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name of the &#x60;Release&#x60;.  Format: &#x60;projects/{project_id}/releases/{release_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.Release{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_releases_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.Release.t()} | {:error, Tesla.Env.t()}
  def firebaserules_projects_releases_get(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.Release{}])
  end

  @doc """
  Get the &#x60;Release&#x60; executable to use when enforcing rules.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name of the &#x60;Release&#x60;.  Format: &#x60;projects/{project_id}/releases/{release_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :executableVersion (String.t): The requested runtime executable version. Defaults to FIREBASE_RULES_EXECUTABLE_V1.

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.GetReleaseExecutableResponse{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_releases_get_executable(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.GetReleaseExecutableResponse.t()}
          | {:error, Tesla.Env.t()}
  def firebaserules_projects_releases_get_executable(
        connection,
        name,
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
      :upload_protocol => :query,
      :uploadType => :query,
      :executableVersion => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}:getExecutable", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.GetReleaseExecutableResponse{}]
    )
  end

  @doc """
  List the &#x60;Release&#x60; values for a project. This list may optionally be filtered by &#x60;Release&#x60; name, &#x60;Ruleset&#x60; name, &#x60;TestSuite&#x60; name, or any combination thereof.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name for the project.  Format: &#x60;projects/{project_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageSize (integer()): Page size to load. Maximum of 100. Defaults to 10. Note: &#x60;page_size&#x60; is just a hint and the service may choose to load fewer than &#x60;page_size&#x60; results due to the size of the output. To traverse all of the releases, the caller should iterate until the &#x60;page_token&#x60; on the response is empty.
    - :filter (String.t): &#x60;Release&#x60; filter. The list method supports filters with restrictions on the &#x60;Release.name&#x60;, &#x60;Release.ruleset_name&#x60;, and &#x60;Release.test_suite_name&#x60;.  Example 1: A filter of &#39;name&#x3D;prod*&#39; might return &#x60;Release&#x60;s with names within &#39;projects/foo&#39; prefixed with &#39;prod&#39;:  Name                          | Ruleset Name ------------------------------|------------- projects/foo/releases/prod    | projects/foo/rulesets/uuid1234 projects/foo/releases/prod/v1 | projects/foo/rulesets/uuid1234 projects/foo/releases/prod/v2 | projects/foo/rulesets/uuid8888  Example 2: A filter of &#x60;name&#x3D;prod* ruleset_name&#x3D;uuid1234&#x60; would return only &#x60;Release&#x60; instances for &#39;projects/foo&#39; with names prefixed with &#39;prod&#39; referring to the same &#x60;Ruleset&#x60; name of &#39;uuid1234&#39;:  Name                          | Ruleset Name ------------------------------|------------- projects/foo/releases/prod    | projects/foo/rulesets/1234 projects/foo/releases/prod/v1 | projects/foo/rulesets/1234  In the examples, the filter parameters refer to the search filters are relative to the project. Fully qualified prefixed may also be used. e.g. &#x60;test_suite_name&#x3D;projects/foo/testsuites/uuid1&#x60;
    - :pageToken (String.t): Next page token for the next batch of &#x60;Release&#x60; instances.

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.ListReleasesResponse{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_releases_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.ListReleasesResponse.t()}
          | {:error, Tesla.Env.t()}
  def firebaserules_projects_releases_list(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :pageSize => :query,
      :filter => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}/releases", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.ListReleasesResponse{}])
  end

  @doc """
  Update a &#x60;Release&#x60; via PATCH.  Only updates to the &#x60;ruleset_name&#x60; and &#x60;test_suite_name&#x60; fields will be honored. &#x60;Release&#x60; rename is not supported. To create a &#x60;Release&#x60; use the CreateRelease method.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name for the project which owns this &#x60;Release&#x60;.  Format: &#x60;projects/{project_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (UpdateReleaseRequest): 

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.Release{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_releases_patch(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.Release.t()} | {:error, Tesla.Env.t()}
  def firebaserules_projects_releases_patch(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/v1/{+name}", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.Release{}])
  end

  @doc """
  Create a &#x60;Ruleset&#x60; from &#x60;Source&#x60;.  The &#x60;Ruleset&#x60; is given a unique generated name which is returned to the caller. &#x60;Source&#x60; containing syntactic or semantics errors will result in an error response indicating the first error encountered. For a detailed view of &#x60;Source&#x60; issues, use TestRuleset.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name for Project which owns this &#x60;Ruleset&#x60;.  Format: &#x60;projects/{project_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (Ruleset): 

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.Ruleset{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_rulesets_create(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.Ruleset.t()} | {:error, Tesla.Env.t()}
  def firebaserules_projects_rulesets_create(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}/rulesets", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.Ruleset{}])
  end

  @doc """
  List &#x60;Ruleset&#x60; metadata only and optionally filter the results by &#x60;Ruleset&#x60; name.  The full &#x60;Source&#x60; contents of a &#x60;Ruleset&#x60; may be retrieved with GetRuleset.

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Resource name for the project.  Format: &#x60;projects/{project_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :pageToken (String.t): Next page token for loading the next batch of &#x60;Ruleset&#x60; instances.
    - :pageSize (integer()): Page size to load. Maximum of 100. Defaults to 10. Note: &#x60;page_size&#x60; is just a hint and the service may choose to load less than &#x60;page_size&#x60; due to the size of the output. To traverse all of the releases, caller should iterate until the &#x60;page_token&#x60; is empty.
    - :filter (String.t): &#x60;Ruleset&#x60; filter. The list method supports filters with restrictions on &#x60;Ruleset.name&#x60;.  Filters on &#x60;Ruleset.create_time&#x60; should use the &#x60;date&#x60; function which parses strings that conform to the RFC 3339 date/time specifications.  Example: &#x60;create_time &gt; date(\&quot;2017-01-01\&quot;) AND name&#x3D;UUID-*&#x60;

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.ListRulesetsResponse{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_rulesets_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.ListRulesetsResponse.t()}
          | {:error, Tesla.Env.t()}
  def firebaserules_projects_rulesets_list(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :pageToken => :query,
      :pageSize => :query,
      :filter => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/v1/{+name}/rulesets", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.ListRulesetsResponse{}])
  end

  @doc """
  Test &#x60;Source&#x60; for syntactic and semantic correctness. Issues present, if any, will be returned to the caller with a description, severity, and source location.  The test method may be executed with &#x60;Source&#x60; or a &#x60;Ruleset&#x60; name. Passing &#x60;Source&#x60; is useful for unit testing new rules. Passing a &#x60;Ruleset&#x60; name is useful for regression testing an existing rule.  The following is an example of &#x60;Source&#x60; that permits users to upload images to a bucket bearing their user id and matching the correct metadata:  _*Example*_      // Users are allowed to subscribe and unsubscribe to the blog.     service firebase.storage {       match /users/{userId}/images/{imageName} {           allow write: if userId &#x3D;&#x3D; request.auth.uid               &amp;&amp; (imageName.matches(&#39;*.png$&#39;)               || imageName.matches(&#39;*.jpg$&#39;))               &amp;&amp; resource.mimeType.matches(&#39;^image/&#39;)       }     }

  ## Parameters

  - connection (GoogleApi.FirebaseRules.V1.Connection): Connection to server
  - name (String.t): Tests may either provide &#x60;source&#x60; or a &#x60;Ruleset&#x60; resource name.  For tests against &#x60;source&#x60;, the resource name must refer to the project: Format: &#x60;projects/{project_id}&#x60;  For tests against a &#x60;Ruleset&#x60;, this must be the &#x60;Ruleset&#x60; resource name: Format: &#x60;projects/{project_id}/rulesets/{ruleset_id}&#x60;
  - optional_params (KeywordList): [optional] Optional parameters
    - :$.xgafv (String.t): V1 error format.
    - :access_token (String.t): OAuth access token.
    - :alt (String.t): Data format for response.
    - :callback (String.t): JSONP
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters.
    - :upload_protocol (String.t): Upload protocol for media (e.g. \&quot;raw\&quot;, \&quot;multipart\&quot;).
    - :uploadType (String.t): Legacy upload protocol for media (e.g. \&quot;media\&quot;, \&quot;multipart\&quot;).
    - :body (TestRulesetRequest): 

  ## Returns

  {:ok, %GoogleApi.FirebaseRules.V1.Model.TestRulesetResponse{}} on success
  {:error, info} on failure
  """
  @spec firebaserules_projects_test(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.FirebaseRules.V1.Model.TestRulesetResponse.t()}
          | {:error, Tesla.Env.t()}
  def firebaserules_projects_test(connection, name, optional_params \\ [], opts \\ []) do
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
      :upload_protocol => :query,
      :uploadType => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/v1/{+name}:test", %{
        "name" => URI.encode_www_form(name)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.FirebaseRules.V1.Model.TestRulesetResponse{}])
  end
end
