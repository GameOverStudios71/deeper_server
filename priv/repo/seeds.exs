# Script for populating the database.

alias DeeperServer.Repo
alias DeeperServer.Accounts.{Role, User}
alias DeeperServer.Content.ContentType

# Cria a role de Administrador se não existir
case Repo.get_by(Role, name: "admin") do
  nil ->
    {:ok, _role} = Repo.insert(%Role{name: "admin", description: "Administrador do sistema"})
  role ->
    IO.puts "Role 'admin' já existe."
end

# Pega a role de admin para associar ao usuário
admin_role = Repo.get_by(Role, name: "admin")

# Cria o usuário administrador se não existir
case Repo.get_by(User, email: "admin@example.com") do
  nil ->
    user_params = %{
      email: "admin@example.com",
      password: "password123",
      role_id: admin_role.id,
      confirmed_at: NaiveDateTime.utc_now()
    }
    DeeperServer.Accounts.register_user(user_params)
  _ ->
    IO.puts "Usuário 'admin@example.com' já existe."
end

# Cria tipos de conteúdo padrão
content_types = [
  %{name: "Post", slug: "post", description: "Para artigos e notícias."},
  %{name: "Página", slug: "page", description: "Para páginas estáticas como 'Sobre' ou 'Contato'."}
]

Enum.each(content_types, fn ct_params ->
  case Repo.get_by(ContentType, slug: ct_params.slug) do
    nil ->
      {:ok, _ct} = Repo.insert(%ContentType{name: ct_params.name, slug: ct_params.slug, description: ct_params.description})
    _ ->
      IO.puts "Content type '#{ct_params.name}' já existe."
  end
end)

IO.puts "Banco de dados populado com sucesso!"
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     DeeperServer.Repo.insert!(%DeeperServer.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias DeeperServer.Repo
alias DeeperServer.Accounts
alias DeeperServer.Accounts.{Role, User, Profile}

# Reset do banco de dados (opcional, mas útil para desenvolvimento)
Repo.delete_all(User)
Repo.delete_all(Profile)
Repo.delete_all(Role)

# Cria as Roles
{:ok, admin_role} = Accounts.create_role(%{name: "Admin", description: "Super user with all permissions."})
{:ok, _member_role} = Accounts.create_role(%{name: "Member", description: "Standard user with basic permissions."})

# Cria o Usuário Administrador
admin_attrs = %{
  email: "admin@example.com",
  password: "password123",
  password_confirmation: "password123",
  role_id: admin_role.id,
  profile: %{
    full_name: "Admin User",
    bio: "I am the administrator."
  }
}

case Accounts.register_user(admin_attrs) do
  {:ok, admin_user} ->
    IO.puts "Successfully created admin user: #{admin_user.email}"
  {:error, changeset} ->
    IO.inspect changeset
    IO.puts "Failed to create admin user."
end
