# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Json.Repo.insert!(%Json.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
alias Json.Repo
  alias Json.Accounts
  alias Json.Accounts.User

  Repo.insert! %User{
    uid: "ae5ab211-91a5-410c-ad34-04b1190e306a",
    firstname: "dupond",
    email: "dupond@outlook.fr",
    pro: true,
    perso: false
  }

  Repo.insert! %User{
    uid: "ae5ab211-91a5-410c-ad34-04b1190e306a",
    firstname: "dupont",
    email: "dupont@outlook.fr",
    pro: true,
    perso: false
  }

  Repo.insert! %User{
    uid: "ae5ab211-91a5-410c-ad34-04b1190e306a",
    firstname: "dupon",
    email: "dupon@outlook.fr",
    pro: true,
    perso: false
  }