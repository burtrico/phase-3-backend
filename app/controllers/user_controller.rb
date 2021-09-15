class UsersController < ApplicationController
    get "/users" do 
      serialize(User.all)
    end
  
    post "/users" do 
      serialize(User.create(user_params))
    end
  
    delete "/users/:id" do 
      serialize(User.find(params[:id]).destroy)
    end
  
    private
  
    def user_params
      allowed_params = %w(name)
      params.select { |param, value| allowed_params.include?(param)}
    end
  
    def serialize(objects)
      objects.to_json
    end
  end