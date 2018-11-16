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

defmodule GoogleApi.Content.V2.Model.OrderinvoicesCreateChargeInvoiceRequest do
  @moduledoc """


  ## Attributes

  - invoiceId (String.t): [required] The ID of the invoice. Defaults to: `null`.
  - invoiceSummary (InvoiceSummary): [required] Invoice summary. Defaults to: `null`.
  - lineItemInvoices ([ShipmentInvoiceLineItemInvoice]): [required] Invoice details per line item. Defaults to: `null`.
  - operationId (String.t): [required] The ID of the operation, unique across all operations for a given order. Defaults to: `null`.
  - shipmentGroupId (String.t): [required] ID of the shipment group. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :invoiceId => any(),
          :invoiceSummary => GoogleApi.Content.V2.Model.InvoiceSummary.t(),
          :lineItemInvoices => list(GoogleApi.Content.V2.Model.ShipmentInvoiceLineItemInvoice.t()),
          :operationId => any(),
          :shipmentGroupId => any()
        }

  field(:invoiceId)
  field(:invoiceSummary, as: GoogleApi.Content.V2.Model.InvoiceSummary)

  field(
    :lineItemInvoices,
    as: GoogleApi.Content.V2.Model.ShipmentInvoiceLineItemInvoice,
    type: :list
  )

  field(:operationId)
  field(:shipmentGroupId)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V2.Model.OrderinvoicesCreateChargeInvoiceRequest do
  def decode(value, options) do
    GoogleApi.Content.V2.Model.OrderinvoicesCreateChargeInvoiceRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V2.Model.OrderinvoicesCreateChargeInvoiceRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
