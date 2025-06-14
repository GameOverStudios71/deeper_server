defmodule DeeperServerWeb.Api.V1.ErrorJSON do
  # If you want to customize a particular status code
  # for a certain view, you may use this module.
  # def render("404.json", _assigns) do
  #   %{errors: %{detail: "Not found"}}
  # end

  # By default, render any status code message as is
  def render(template, _assigns) do
    %{errors: %{detail: Phoenix.Controller.status_message_from_template(template)}}
  end
end 