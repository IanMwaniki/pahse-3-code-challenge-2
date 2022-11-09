class Review < ActiveRecord::Base
    belongs_to :user
    belongs_to :product
     ##outputs review in specified format on rake console
     def print_review
        "Review for " + Review.first.product.name + ":" + " by " +  User.first.name + " " + Review.first.star_rating.to_s + " " + Review.first.comment + "."
        end
end
