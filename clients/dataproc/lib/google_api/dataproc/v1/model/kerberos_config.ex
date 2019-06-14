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

defmodule GoogleApi.Dataproc.V1.Model.KerberosConfig do
  @moduledoc """
  Specifies Kerberos related configuration.

  ## Attributes

  - crossRealmTrustAdminServer (String.t): Optional. The admin server (IP or hostname) for the remote trusted realm in a cross realm trust relationship. Defaults to: `null`.
  - crossRealmTrustKdc (String.t): Optional. The KDC (IP or hostname) for the remote trusted realm in a cross realm trust relationship. Defaults to: `null`.
  - crossRealmTrustRealm (String.t): Optional. The remote realm the Dataproc on-cluster KDC will trust, should the user enable cross realm trust. Defaults to: `null`.
  - crossRealmTrustSharedPasswordUri (String.t): Optional. The Cloud Storage URI of a KMS encrypted file containing the shared password between the on-cluster Kerberos realm and the remote trusted realm, in a cross realm trust relationship. Defaults to: `null`.
  - enableKerberos (boolean()): Optional. Flag to indicate whether to Kerberize the cluster. Defaults to: `null`.
  - kdcDbKeyUri (String.t): Optional. The Cloud Storage URI of a KMS encrypted file containing the master key of the KDC database. Defaults to: `null`.
  - keyPasswordUri (String.t): Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided key. For the self-signed certificate, this password is generated by Dataproc. Defaults to: `null`.
  - keystorePasswordUri (String.t): Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided keystore. For the self-signed certificate, this password is generated by Dataproc. Defaults to: `null`.
  - keystoreUri (String.t): Optional. The Cloud Storage URI of the keystore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. Defaults to: `null`.
  - kmsKeyUri (String.t): Required. The uri of the KMS key used to encrypt various sensitive files. Defaults to: `null`.
  - rootPrincipalPasswordUri (String.t): Required. The Cloud Storage URI of a KMS encrypted file containing the root principal password. Defaults to: `null`.
  - tgtLifetimeHours (integer()): Optional. The lifetime of the ticket granting ticket, in hours. If not specified, or user specifies 0, then default value 10 will be used. Defaults to: `null`.
  - truststorePasswordUri (String.t): Optional. The Cloud Storage URI of a KMS encrypted file containing the password to the user provided truststore. For the self-signed certificate, this password is generated by Dataproc. Defaults to: `null`.
  - truststoreUri (String.t): Optional. The Cloud Storage URI of the truststore file used for SSL encryption. If not provided, Dataproc will provide a self-signed certificate. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :crossRealmTrustAdminServer => any(),
          :crossRealmTrustKdc => any(),
          :crossRealmTrustRealm => any(),
          :crossRealmTrustSharedPasswordUri => any(),
          :enableKerberos => any(),
          :kdcDbKeyUri => any(),
          :keyPasswordUri => any(),
          :keystorePasswordUri => any(),
          :keystoreUri => any(),
          :kmsKeyUri => any(),
          :rootPrincipalPasswordUri => any(),
          :tgtLifetimeHours => any(),
          :truststorePasswordUri => any(),
          :truststoreUri => any()
        }

  field(:crossRealmTrustAdminServer)
  field(:crossRealmTrustKdc)
  field(:crossRealmTrustRealm)
  field(:crossRealmTrustSharedPasswordUri)
  field(:enableKerberos)
  field(:kdcDbKeyUri)
  field(:keyPasswordUri)
  field(:keystorePasswordUri)
  field(:keystoreUri)
  field(:kmsKeyUri)
  field(:rootPrincipalPasswordUri)
  field(:tgtLifetimeHours)
  field(:truststorePasswordUri)
  field(:truststoreUri)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.KerberosConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.KerberosConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.KerberosConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end