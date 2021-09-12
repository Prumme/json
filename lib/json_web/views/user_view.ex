defmodule JsonWeb.UserView do
  use JsonWeb, :view
  alias JsonWeb.UserView

  def render("index.json", %{users: users}) do
    %{data: render_many(users, UserView, "user.json")}
  end

  def render("show.json", %{user: user}) do
    %{data: render_one(user, UserView, "user.json")}
  end

  def render("user.json", %{user: user}) do
    %{id: user.id,
      uid: user.uid,
      firstname: user.firstname,
      email: user.email,
      perso: user.perso,
      pro: user.pro}
  end
end
