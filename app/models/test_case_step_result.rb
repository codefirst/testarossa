class TestCaseStepResult < ActiveRecord::Base
  include Markdownize
  belongs_to :test_result
  belongs_to :test_case_step
end
