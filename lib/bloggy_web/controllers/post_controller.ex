defmodule BloggyWeb.PostController do
    use BloggyWeb, :controller

    # def index(conn, _params) do
    #   render(conn, "index.html")
    # end

    def newPostForm(conn, _params) do
        render conn, "post_form.html", token: get_csrf_token()
    end

    def newPost(conn, %{"title" => title, "body" => body}) do
        # a_post = %Bloggy.Post{body: "this is the post", title: "A New Post"}
        a_post = %Bloggy.Post{body: body, title: title}

        Bloggy.Repo.insert(a_post)

        render(conn, "index.html")
    end

    @spec getPost(Plug.Conn.t(), any()) :: Plug.Conn.t()
    def getPost(conn, _params) do
        render(conn, "index.html")
    end

  end
