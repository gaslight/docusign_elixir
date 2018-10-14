# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Model.WorkspaceFolderContents do
  @moduledoc """
  Provides properties that describe the contents of a workspace folder.
  """

  @derive [Poison.Encoder]
  defstruct [
    :endPosition,
    :folder,
    :items,
    :parentFolders,
    :resultSetSize,
    :startPosition,
    :totalSetSize,
    :workspaceId
  ]

  @type t :: %__MODULE__{
    :endPosition => String.t,
    :folder => WorkspaceItems,
    :items => [WorkspaceItems],
    :parentFolders => [WorkspaceItems],
    :resultSetSize => String.t,
    :startPosition => String.t,
    :totalSetSize => String.t,
    :workspaceId => String.t
  }
end

defimpl Poison.Decoder, for: DocuSign.Model.WorkspaceFolderContents do
  import DocuSign.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:folder, :struct, DocuSign.Model.WorkspaceItems, options)
    |> deserialize(:items, :list, DocuSign.Model.WorkspaceItems, options)
    |> deserialize(:parentFolders, :list, DocuSign.Model.WorkspaceItems, options)
  end
end
