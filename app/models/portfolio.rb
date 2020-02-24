class Portfolio < ApplicationRecord
  has_many :technologies
  include Placeholder
  validates_presence_of :title,:body,:main_image, :thumb_image

  def self.angular
    where(subtitle: 'Angular')
  end

  scope :ruby_on_rails_portfolio_items,-> {where(subtitle:'Ruby on Rails')}

  after_initialize :set_default

  def set_default
    self.main_image||=Placeholder.image_generator(height:250,width:250)
    self.thumb_image||=Placeholder.image_generator(height:200,width:200)
  end

end
