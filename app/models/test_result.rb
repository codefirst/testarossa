class TestResult < ActiveRecord::Base
  belongs_to :test_case
  has_many :test_case_results
end
