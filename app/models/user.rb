class User < ActiveRecord::Base
    has_many :ratings
    has_many :assets, through: :ratings

    
   
   
    
    def favorite_asset
        puts "Favorite Assets Method:"
        self.ratings.order(star_rating: :desc).first

    end

    #In order to check if the rating has been deleted, exit the rake console and then return into the console
    def remove_ratings(asset)
        puts "Remove Ratings Method for #{asset} with id = #{asset.id}"
        self.ratings.each do |rev|
            if(rev.asset_id == asset.id)
                puts "Deleting your asset with id = #{asset.id}:"
                rev.delete
            else
                puts "Rating for #{asset} skipped."
            end
        end
    end




end