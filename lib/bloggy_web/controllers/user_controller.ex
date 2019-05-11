defmodule BloggyWeb.UserController do
    use BloggyWeb, :controller

    # def index(conn, _params) do
    #   render(conn, "index.html")
    # end

    def login(conn, _params) do
        render(conn, "index.html")
    end

    def loginForm(conn, _params) do
        render(conn, "index.html")
    end

    def newUserForm(conn, _params) do
        render(conn, "index.html")
    end

    def newUser(conn, _params) do
        render(conn, "index.html")
    end

    def logout(conn, _params) do
        render(conn, "index.html")
    end

  end
