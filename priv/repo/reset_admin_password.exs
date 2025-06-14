IO.puts "--> Checking for admin user..."

alias DeeperServer.Repo
alias DeeperServer.Accounts
alias DeeperServer.Accounts.{User, Role}

# Find or create the 'admin' role
admin_role = 
  case Repo.get_by(Role, name: "admin") do
    nil ->
      IO.puts "--> 'admin' role not found. Creating it."
      {:ok, role} = 
        Role.changeset(%Role{}, %{name: "admin", description: "Administrador do sistema"})
        |> Repo.insert()
      role
    role -> 
      IO.puts "--> 'admin' role found."
      role
  end

# Find the user
user = Repo.get_by(User, email: "admin@example.com")

if user do
  IO.puts "--> Found user: admin@example.com. Resetting password."
  case Accounts.update_user(user, %{password: "password123"}) do
    {:ok, _user} ->
      IO.puts "--> Password for admin@example.com has been reset successfully."
    {:error, changeset} ->
      IO.puts "--> Error resetting password."
      IO.inspect changeset
  end
else
  IO.puts "--> User admin@example.com not found. Creating it."
  user_params = %{
    email: "admin@example.com",
    password: "password123",
    password_confirmation: "password123",
    role_id: admin_role.id,
    confirmed_at: NaiveDateTime.utc_now()
  }

  case Accounts.register_user(user_params) do
    {:ok, _user} ->
      IO.puts "--> User 'admin@example.com' created successfully with the correct password."
    {:error, changeset} ->
      IO.puts "--> Error creating user."
      IO.inspect changeset
  end
end
