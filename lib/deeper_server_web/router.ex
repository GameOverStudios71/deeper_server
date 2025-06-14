defmodule DeeperServerWeb.Router do
  use DeeperServerWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {DeeperServerWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  pipeline :api_protected do
    plug :accepts, ["json"]
    plug DeeperServerWeb.Auth.AuthGuard
  end

  scope "/", DeeperServerWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  scope "/api/v1", DeeperServerWeb.Api.V1, as: :api_v1 do
    # Pipeline público apenas para o login
    pipe_through :api
    post "/sessions", SessionController, :create

    # Pipeline protegido para todo o resto
    pipe_through :api_protected

    resources "/roles", RoleController, except: [:new, :edit]
    resources "/profiles", ProfileController, except: [:new, :edit]
    resources "/users", UserController, except: [:new, :edit]
    resources "/layouts", LayoutController, except: [:new, :edit]
    resources "/content_types", ContentTypeController, except: [:new, :edit] do
      resources "/entries", EntryController, except: [:new, :edit] do
        resources "/entry_blocks", EntryBlockController, except: [:new, :edit, :update, :delete]
      end
    end
    resources "/block_types", BlockTypeController, except: [:new, :edit]
    resources "/menus", MenuController, except: [:new, :edit] do
      resources "/menu_items", MenuItemController, except: [:new, :edit, :show, :update, :delete]
    end
    resources "/media", MediaController, only: [:index, :create, :delete]
  end

  # Other scopes may use custom stacks.
  # scope "/api", DeeperServerWeb do
  #   pipe_through :api
  # end

  # Enable LiveDashboard and Swoosh mailbox preview in development
  if Application.compile_env(:deeper_server, :dev_routes) do
    # If you want to use the LiveDashboard in production, you should put
    # it behind authentication and allow only admins to access it.
    # If your application does not have an admins-only section yet,
    # you can use Plug.BasicAuth to set up some basic authentication
    # as long as you are also using SSL (which you should anyway).
    import Phoenix.LiveDashboard.Router

    scope "/dev" do
      pipe_through :browser

      live_dashboard "/dashboard", metrics: DeeperServerWeb.Telemetry
      forward "/mailbox", Plug.Swoosh.MailboxPreview
    end
  end
end
