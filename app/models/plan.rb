class Plan < ActiveRecord::Base
  include Markdownize
  belongs_to :project
  has_many :testcases
  has_many :results
end
