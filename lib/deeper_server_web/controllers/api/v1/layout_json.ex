defmodule DeeperServerWeb.Api.V1.LayoutJSON do
  alias DeeperServer.Content.Layout

  def index(%{layouts: layouts}) do
    %{data: for(layout <- layouts, do: data(layout))}
  end

  def show(%{layout: layout}) do
    %{data: data(layout)}
  end

  defp data(%Layout{id: id, name: name, template_path: template_path}) do
    %{
      id: id,
      name: name,
      template_path: template_path
    }
  end
end
