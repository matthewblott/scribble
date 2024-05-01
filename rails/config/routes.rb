Rails.application.routes.draw do
  resource(:configuration, only: :show)

  resources(:settings, only: :index)

  resources(:notes, only: [:create, :new, :destroy, :index])

  resources(
    :passwords,
    controller: "clearance/passwords",
    only: [:create, :edit, :new]
  )

  resource(
    :session,
    controller: "clearance/sessions",
    only: [:create]
  )

  resources(
    :users,
    controller: "clearance/users",
    only: Clearance.configuration.user_actions
  ) do
    resource(
      :password,
      controller: "clearance/passwords",
      only: [:edit, :update]
    )
  end

  get("/sign_in" => "clearance/sessions#new", :as => "sign_in")
  delete("/sign_out" => "clearance/sessions#destroy", :as => "sign_out")
  get("/sign_up" => "clearance/users#new", :as => "sign_up")

  get("/home", to: "general#index", as: "home")
  get("/about", to: "general#about", as: "about")
  get("/contact", to: "general#contact", as: "contact")

  root("notes#new")
end
