# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.TemplateSummary do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :applied,
    :documentId,
    :documentName,
    :name,
    :templateId,
    :templateMatch,
    :uri
  ]

  @type t :: %__MODULE__{
    :applied => String.t,
    :documentId => String.t,
    :documentName => String.t,
    :name => String.t,
    :templateId => String.t,
    :templateMatch => TemplateMatch,
    :uri => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.TemplateSummary do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:templateMatch, :struct, DocuSign.Model.TemplateMatch, options)
  end
end
