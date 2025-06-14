defmodule DeeperServerWeb.Api.V1.ProfileController do
  use DeeperServerWeb, :controller

  alias DeeperServer.Accounts
  alias DeeperServer.Accounts.Profile

  action_fallback DeeperServerWeb.Api.V1.FallbackController

  def index(conn, _params) do
    {profiles, _} = Accounts.list_profiles()
    conn
    |> put_view(DeeperServerWeb.Api.V1.ProfileJSON)
    |> render(:index, profiles: profiles)
  end

  def create(conn, %{"profile" => profile_params}) do
    with {:ok, %Profile{} = profile} <- Accounts.create_profile(profile_params) do
      conn
      |> put_status(:created)
      |> put_view(DeeperServerWeb.Api.V1.ProfileJSON)
      |> render(:show, profile: profile)
    end
  end

  def show(conn, %{"id" => id}) do
    with {:ok, %Profile{} = profile} <- Accounts.get_profile(id) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.ProfileJSON)
      |> render(:show, profile: profile)
    end
  end

  def update(conn, %{"id" => id, "profile" => profile_params}) do
    with {:ok, %Profile{} = profile} <- Accounts.get_profile(id),
         {:ok, %Profile{} = updated_profile} <- Accounts.update_profile(profile, profile_params) do
      conn
      |> put_view(DeeperServerWeb.Api.V1.ProfileJSON)
      |> render(:show, profile: updated_profile)
    end
  end

  def delete(conn, %{"id" => id}) do
    with {:ok, %Profile{} = profile} <- Accounts.get_profile(id),
         {:ok, _} <- Accounts.delete_profile(profile) do
      send_resp(conn, :no_content, "")
    end
  end
end
