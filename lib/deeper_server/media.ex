defmodule DeeperServer.Media do
  alias DeeperServer.Media.Media

  use ContextKit.CRUD,
    repo: DeeperServer.Repo,
    schema: Media,
    queries: __MODULE__,
    plural_resource_name: "media"

  @uploads_dir "priv/static/uploads"

  def create_from_upload(%Plug.Upload{} = upload) do
    # Garante que o diretório de uploads exista
    File.mkdir_p!(@uploads_dir)

    # Gera um nome de arquivo único para evitar conflitos
    extension = Path.extname(upload.filename)
    unique_filename = "#{Ecto.UUID.generate()}#{extension}"
    destination_path = Path.join(@uploads_dir, unique_filename)

    # Move o arquivo temporário para o destino final
    case File.cp(upload.path, destination_path) do
      :ok ->
        # Pega o tamanho do arquivo após ele ser copiado
        {:ok, %{size: size}} = File.stat(destination_path)

        media_params = %{
          filename: upload.filename,
          path: "/uploads/#{unique_filename}", # Caminho público
          mime_type: upload.content_type,
          size: size,
          alt_text: "Default alt text" # Poderia vir dos parâmetros do formulário
        }
        create_media(media_params)

      {:error, reason} ->
        {:error, "Failed to copy uploaded file: #{reason}"}
    end
  end
end
