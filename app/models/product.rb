class Product < ApplicationRecord
    default_scope { order(title: :asc) }

    validates :description, :title, :presence => true
    validates :title, uniqueness: true
    validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
    validates :image_url, :format => {
        :with => %r{\.(gif|jpg|png)\A}i,
        :message => 'must be a URL for GIF, JPG or PNG image.'
    }
end
