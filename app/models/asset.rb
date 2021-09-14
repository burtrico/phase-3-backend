class Asset < ActiveRecord::Base
    has_many :ratings
    has_many :users, through: :ratings

    
    def leave_rating(user, star_rating, comment)
        puts "Leave Rating Method:"
        puts "User: #{user.name}"
        puts "Star_Rating: #{star_rating}"
        puts "Comment: #{comment}"

        Rating.create(user_id: user.id, product_id: self.id, star_rating: star_rating, comment: comment)
    end

    def print_all_ratings
        puts "Print All Ratings Method:"
        self.ratings.each do |r|
            r.print_rating
        end
    end

    def average_rating
        puts "Average Rating Method:"
            self.ratings.map{ |rev| rev.star_rating}.sum/self.ratings.length.to_f


    end





end