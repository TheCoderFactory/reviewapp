class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :content
      t.integer :star_rating
      t.references :user, index: true
      t.references :business, index: true

      t.timestamps
    end
  end
end
