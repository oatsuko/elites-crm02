class Comment < ActiveRecord::Base
  belongs_to :customer
  
  validates :body,       presense: true, length: { maximum: 200 }
  validates :customer_id,presense: true
end
