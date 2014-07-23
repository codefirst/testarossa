class TestCase < ActiveRecord::Base
  include Markdownize
  belongs_to :project
  has_many :test_case_steps
  has_many :test_results
end
