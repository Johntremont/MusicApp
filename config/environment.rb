# Load the Rails application.
require_relative 'application'
require 'awesome_print'
# false

test_data = {:a => 'Ruby in Rails String', :b => {:array => [1,2,3]}}

# {:a => 'Ruby in Rails String', :b => {:array => [1,2,3]}}

ap test_data
# {
#     :a => "Ruby in Rails String",
#     :b => {
#         :array => [
#             [0] 1,
#             [1] 2,
#             [2] 3
#         ]
#     }
# }

# Initialize the Rails application.
Rails.application.initialize!
