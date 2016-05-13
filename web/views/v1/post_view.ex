defmodule PhoenixDemo.V1.PostView do
  use PhoenixDemo.Web, :view

  def render("index.json", %{posts: posts}) do
    %{posts: render_many(posts, PhoenixDemo.V1.PostView, "post.json")}
  end

  def render("show.json", %{post: post}) do
    %{post: render_one(post, PhoenixDemo.V1.PostView, "post.json")}
  end

  def render("post.json", %{post: post}) do
    %{id: post.id,
      title: post.title,
      content: post.content}
  end
end
