defmodule DeeperServerWeb.Api.V1.RoleJSON do
  alias DeeperServer.Accounts.Role

  def index(%{roles: roles}) do
    %{data: for(role <- roles, do: data(role))}
  end

  def show(%{role: role}) do
    %{data: data(role)}
  end

  defp data(%Role{id: id, name: name, description: description}) do
    %{
      id: id,
      name: name,
      description: description
    }
  end
end
