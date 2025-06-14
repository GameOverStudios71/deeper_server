defmodule DeeperServer.System do
  use ContextKit.CRUD,
    repo: DeeperServer.Repo,
    schema: DeeperServer.System.Menu,
    queries: __MODULE__

  use ContextKit.CRUD,
    repo: DeeperServer.Repo,
    schema: DeeperServer.System.MenuItem,
    queries: __MODULE__,
    plural_resource_name: "menu_items"
end
