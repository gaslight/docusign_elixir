# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.FileType do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :fileExtension,
    :mimeType
  ]

  @type t :: %__MODULE__{
    :fileExtension => String.t,
    :mimeType => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.FileType do
  def decode(value, _options) do
    value
  end
end
