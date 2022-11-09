class Product < ActiveRecord::Base
    has_many :reviews
    has_many :users
    has_many through :reviews

    def print_all_reviews
        Review.all.map do |t|
        "Review for " + t.product.name + " " + "by" + " " + t.user.name + ":" + " " + t.star_rating.to_s + "." + " " + t.comment
         end
    end

    ##outputs average rating review in specified format on rake console coverting it into float.
    def average_rating
       res =  Review.all.map {|avg|  avg.star_rating}
       res.empty? ? nil : res.reduce(:+)/res.size.to_f
    end

    ##for creates reviews
    def leave_review(user, star_rating, comment)
        Review.create(star_rating: star_rating, comment: comment, user_id: user.id, product_id: product.id)
    end
end