class Testcase < ActiveRecord::Base
  include Markdownize
  belongs_to :testcase
  has_many :results
end
