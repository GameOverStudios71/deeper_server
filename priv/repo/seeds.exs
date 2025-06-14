# Script for populating the database. You can run it as:
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
