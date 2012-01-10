# Add access to reviews/ratings to the product model
Product.class_eval do
  has_many :reviews

  def get_stars
    [avg_rating.round, reviews_count]
  end
  
  def recalculate_rating
    reviews_count = reviews.reload.approved.count    
    avg_rating = reviews_count == 0 ? 0 : self.reviews.approved.sum(:rating).to_f / reviews_count
    self.update_attributes(:avg_rating => avg_rating, :reviews_count => reviews_count)
  end
end
