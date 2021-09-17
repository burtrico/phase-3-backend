class RatingsController < ApplicationController
    get "/ratings" do 
      serialize(Rating.all)
    end
  
    post "/ratings" do 
      serialize(Rating.create(rating_params))
    end
  
    delete "/ratings/:id" do 
      serialize(Rating.find(params[:id]).destroy)
    end
  
    private
  
    def rating_params
      allowed_params = %(star_rating comment user_id asset_id)
      params.select { |param, value| allowed_params.include?(param)}
    end
  
    def serialize(objects)
      objects.to_json
    end
  end

  