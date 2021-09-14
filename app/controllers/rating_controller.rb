class RatingsController < ApplicationController
    get "/ratings" do 
      serialize(Rating.all)
    end
  
    post "/ratings" do 
      serialize(Rating.create(user_params))
    end
  
    delete "/ratings/:id" do 
      serialize(Rating.find(params[:id]).destroy)
    end
  
    private
  
    def rating_params
    #   allowed_params = %w(name spot_name category)
      params.select { |param, value| allowed_params.include?(param)}
    end
  
    def serialize(objects)
      objects.to_json(
        methods: [:spot_name]
      )
    end
  end