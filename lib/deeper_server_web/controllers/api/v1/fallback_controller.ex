defmodule DeeperServerWeb.Api.V1.FallbackController do
  use DeeperServerWeb, :controller

  def call(conn, {:error, %Ecto.Changeset{} = changeset}) do
    conn
    |> put_status(:unprocessable_entity)
    |> put_view(json: DeeperServerWeb.Api.V1.ChangesetJSON)
    |> render(:error, changeset: changeset)
  end

  def call(conn, {:error, :not_found}) do
    conn
    |> put_status(:not_found)
    |> put_view(json: DeeperServerWeb.Api.V1.ErrorJSON)
    |> render(:"404")
  end
end 