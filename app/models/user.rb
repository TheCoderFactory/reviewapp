class User < ActiveRecord::Base
	has_many :businesses
	has_many :testimonials
end
