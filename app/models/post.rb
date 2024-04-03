class Post < ApplicationRecord

    validates :title, presence: true, length: {minimum:5, maximum:100}
    validates :description, presence: true, length: {minimum:5, maximum:100}
    validates :keywords, presence: true, length: {minimum:5, maximum:100}

    has_many_attached :images
has_many :comments
    belongs_to :user

    before_create :randomized_id
         private

         def randomized_id
         begin 
          self.id = SecureRandom.random_number(1_000_000_000)
         end
         while User.where(id: self.id).exists?
           
         end
         
        end
        end

