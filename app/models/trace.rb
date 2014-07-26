class Trace < ActiveRecord::Base
  include Markdownize
  belongs_to :result
  belongs_to :testcase
end
