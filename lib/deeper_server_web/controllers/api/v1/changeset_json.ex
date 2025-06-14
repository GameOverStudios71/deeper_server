defmodule DeeperServerWeb.Api.V1.ChangesetJSON do
  @doc """
  Renders the errors from a changeset as a JSON object.
  """
  def render("error.json", %{changeset: changeset}) do
    # When rendering errors, we transform the changeset errors into a JSON object
    %{errors: Ecto.Changeset.traverse_errors(changeset, &translate_error/1)}
  end

  defp translate_error({msg, opts}) do
    # You can make this translation more sophisticated.
    # For now, we are simply translating the error message.
    Enum.reduce(opts, msg, fn {key, value}, acc ->
      String.replace(acc, "%{#{key}}", to_string(value))
    end)
  end
end 