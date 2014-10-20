json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :id, :content, :star_rating, :user_id, :business_id
  json.url testimonial_url(testimonial, format: :json)
end
