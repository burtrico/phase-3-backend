class AssetsController < ApplicationController
    get "/assets" do 
      serialize(Asset.all)
    end
  
    post "/assets" do 
      serialize(Asset.create(asset_params))
    end

    patch "/assets/:id" do
      asset = Asset.find(params[:id])
      asset.update(asset_params)
      serialize(asset)
    end
  
    delete "/assets/:id" do 
      serialize(Asset.find(params[:id]).destroy)
    end
  
    private
  
    def asset_params
   allowed_params = %w(name price quantity in_portfolio)
      params.select { |param, value| allowed_params.include?(param)}
    end
  
    def serialize(objects)
      objects.to_json
    end
  end