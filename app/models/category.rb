class Category < ActiveRecord::Base
    has_many :products
    has_attached_file :picture,   

   styles: { thumb: '100x100>', medium: '300x300>'},   

   default_url: '/images/:style/missing.png'

    validates_attachment :picture,   

   content_type: { content_type: ['image/jpeg', 'image/png', 'image/gif'] }
   
    validates :name, presence: true, 
                    uniqueness: {case_sensitive: false}
end
