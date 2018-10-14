# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.UserPasswordInformation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :currentPassword,
    :email,
    :forgottenPasswordInfo,
    :newPassword
  ]

  @type t :: %__MODULE__{
    :currentPassword => String.t,
    :email => String.t,
    :forgottenPasswordInfo => ForgottenPasswordInformation,
    :newPassword => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.UserPasswordInformation do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:forgottenPasswordInfo, :struct, DocuSign.Model.ForgottenPasswordInformation, options)
  end
end
