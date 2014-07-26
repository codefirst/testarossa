class Result < ActiveRecord::Base
  include Markdownize
  belongs_to :plan
  has_many :traces
end
