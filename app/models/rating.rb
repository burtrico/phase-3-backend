class Rating < ActiveRecord::Base
    belongs_to :user
    belongs_to :asset
    
    def print_review
        puts "Print Rating Method:"

        puts "Rating for #{asset.name} by #{user.name}: #{star_rating}. #{comment}"

    end


end