# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule DocuSign.Api.ChunkedUploads do
  @moduledoc """
  API calls for all endpoints tagged `ChunkedUploads`.
  """

  alias DocuSign.Connection
  import DocuSign.RequestBuilder

  @doc """
  Delete an existing ChunkedUpload.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - chunked_upload_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters

  ## Returns

  {:ok, %DocuSign.Model.ChunkedUploads{}} on success
  {:error, info} on failure
  """
  @spec chunked_uploads_delete_chunked_upload(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.ChunkedUploads.t} | {:error, Tesla.Env.t}
  def chunked_uploads_delete_chunked_upload(connection, account_id, chunked_upload_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/v2/accounts/#{account_id}/chunked_uploads/#{chunked_upload_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ChunkedUploads{})
  end

  @doc """
  Retrieves the current metadata of a ChunkedUpload.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - chunked_upload_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :include (String.t): A comma-separated list of additional template attributes to include in the response. Valid values are: recipients, folders, documents, custom_fields, and notifications.

  ## Returns

  {:ok, %DocuSign.Model.ChunkedUploads{}} on success
  {:error, info} on failure
  """
  @spec chunked_uploads_get_chunked_upload(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.ChunkedUploads.t} | {:error, Tesla.Env.t}
  def chunked_uploads_get_chunked_upload(connection, account_id, chunked_upload_id, opts \\ []) do
    optional_params = %{
      include: :query
    }
    %{}
    |> method(:get)
    |> url("/v2/accounts/#{account_id}/chunked_uploads/#{chunked_upload_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ChunkedUploads{})
  end

  @doc """
  Initiate a new ChunkedUpload.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - opts (KeywordList): [optional] Optional parameters
    - :chunked_upload_request (ChunkedUploadRequest): 

  ## Returns

  {:ok, %DocuSign.Model.ChunkedUploads{}} on success
  {:error, info} on failure
  """
  @spec chunked_uploads_post_chunked_uploads(Tesla.Env.client, String.t, keyword()) :: {:ok, DocuSign.Model.ChunkedUploads.t} | {:error, Tesla.Env.t}
  def chunked_uploads_post_chunked_uploads(connection, account_id, opts \\ []) do
    optional_params = %{
      chunkedUploadRequest: :body
    }
    %{}
    |> method(:post)
    |> url("/v2/accounts/#{account_id}/chunked_uploads")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ChunkedUploads{})
  end

  @doc """
  Add a chunk, a chunk &#39;part&#39;, to an existing ChunkedUpload.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - chunked_upload_id (String.t): 
  - chunked_upload_part_seq (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :chunked_upload_request (ChunkedUploadRequest): 

  ## Returns

  {:ok, %DocuSign.Model.ChunkedUploads{}} on success
  {:error, info} on failure
  """
  @spec chunked_uploads_put_chunked_upload_part(Tesla.Env.client, String.t, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.ChunkedUploads.t} | {:error, Tesla.Env.t}
  def chunked_uploads_put_chunked_upload_part(connection, account_id, chunked_upload_id, chunked_upload_part_seq, opts \\ []) do
    optional_params = %{
      chunkedUploadRequest: :body
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/chunked_uploads/#{chunked_upload_id}/#{chunked_upload_part_seq}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ChunkedUploads{})
  end

  @doc """
  Integrity-Check and Commit a ChunkedUpload, readying it for use elsewhere.
  

  ## Parameters

  - connection (DocuSign.Connection): Connection to server
  - account_id (String.t): The external account number (int) or account ID Guid.
  - chunked_upload_id (String.t): 
  - opts (KeywordList): [optional] Optional parameters
    - :action (String.t): 

  ## Returns

  {:ok, %DocuSign.Model.ChunkedUploads{}} on success
  {:error, info} on failure
  """
  @spec chunked_uploads_put_chunked_uploads(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, DocuSign.Model.ChunkedUploads.t} | {:error, Tesla.Env.t}
  def chunked_uploads_put_chunked_uploads(connection, account_id, chunked_upload_id, opts \\ []) do
    optional_params = %{
      action: :query
    }
    %{}
    |> method(:put)
    |> url("/v2/accounts/#{account_id}/chunked_uploads/#{chunked_upload_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%DocuSign.Model.ChunkedUploads{})
  end
end
