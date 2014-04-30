class Bouquet < ActiveRecord::Base
  attr_accessible :name, :number_of_flowers, :price
  validates :price, :numericality => true, :on => :update
  validates :number_of_flowers, :numericality => true, :on => :update
  end
