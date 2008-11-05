class Product < ActiveRecord::Base
  has_many :orders, :through => :line_items
  has_many :line_items
  # Validate that a Title, Description and Image URL were submitted
  validates_presence_of :title, :description, :image_url
  
  # Validate that Price is a number
  validates_numericality_of :price
  
  # Validate that Price is > 0.01
  validate :price_must_be_at_least_a_cent
  
  # Validate the Title is unique
  validates_uniqueness_of :title
  
  # Validates format of image_url ends with .gif or .jpg or .png
  validates_format_of :image_url,
                      :with     =>  %r{\.(gif|jpg|png)$}i,
                      :message  =>  'must be a URL for GIF, JPG ' +
                                    'or PNG image.(gif|jpg|png)'
  
  def self.find_products_for_sale
    find(:all, :order => "title")
  end
  
  protected
  def price_must_be_at_least_a_cent
    # Add an error on price if the price is < $0.01
    errors.add(:price, 'should be at least 0.01') if price.nil? || price < 0.01
  end
end
