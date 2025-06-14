defmodule DeeperServerWeb.Api.V1.UserJSON do
  alias DeeperServer.Accounts.User

  @doc """
  Renders a list of users.
  """
  def index(%{users: users}) do
    %{data: for(user <- users, do: data(user))}
  end

  @doc """
  Renders a single user.
  """
  def show(%{user: user}) do
    %{data: data(user)}
  end

  @doc """
  Renders a user after a successful creation.
  """
  def create(%{user: user}) do
    %{
      message: "User created successfully",
      data: data(user)
    }
  end

  defp data(%User{id: id, email: email, confirmed_at: confirmed_at, role: role, profile: profile}) do
    %{
      id: id,
      email: email,
      confirmed_at: confirmed_at,
      profile: profile_data(profile),
      role: role_data(role)
    }
  end

  defp profile_data(nil), do: nil
  defp profile_data(profile) do
    %{
      full_name: profile.full_name,
      bio: profile.bio
    }
  end

  defp role_data(nil), do: nil
  defp role_data(role) do
    %{
      name: role.name
    }
  end
end
