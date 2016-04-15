require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  should have_db_column(:name)
  should have_db_column(:catalog)
  should have_db_column(:description)
end
