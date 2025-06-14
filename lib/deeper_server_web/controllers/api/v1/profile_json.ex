defmodule DeeperServerWeb.Api.V1.ProfileJSON do
  alias DeeperServer.Accounts.Profile

  def index(%{profiles: profiles}) do
    %{data: for(profile <- profiles, do: data(profile))}
  end

  def show(%{profile: profile}) do
    %{data: data(profile)}
  end

  defp data(%Profile{id: id, full_name: full_name, bio: bio}) do
    %{
      id: id,
      full_name: full_name,
      bio: bio
    }
  end
end
