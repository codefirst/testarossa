class TestCaseStepResult < ActiveRecord::Base
  belongs_to :test_result
  belongs_to :test_case_step
end
