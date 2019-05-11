defmodule BloggyWeb.PostController do
    use BloggyWeb, :controller

    # def index(conn, _params) do
    #   render(conn, "index.html")
    # end

    def newPostForm(conn, _params) do
        render conn, "post_form.html", token: get_csrf_token()
    end

    def newPost(conn, _params) do
        render(conn, "index.html")
    end

    def getPost(conn, _params) do
        render(conn, "index.html")
    end

  end
