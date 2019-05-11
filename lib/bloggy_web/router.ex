defmodule BloggyWeb.Router do
  use BloggyWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BloggyWeb do
    pipe_through :browser

    get "/", PageController, :index

    post "/login", UserController, :login
    get "/login", UserController, :loginForm
    get  "/register", UserController, :newUserForm
    post "/register", UserController, :newUser
    get "/logout", UserController, :logout

    get "/post", PostController, :newPostForm
    post "/post", PostController, :newPost
    get "/post/:id", PostController, :getPost
  end

  scope "/api", BloggyWeb do
    pipe_through :api

    get "/post/:id", PostController, :getPost
  end

  # Other scopes may use custom stacks.
  # scope "/api", BloggyWeb do
  #   pipe_through :api
  # end
end
