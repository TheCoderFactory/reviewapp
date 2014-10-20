class Testimonial < ActiveRecord::Base
  belongs_to :user
  belongs_to :business

  def self.reverse_chron_order
  	order(created_at: :desc)
  end
end
