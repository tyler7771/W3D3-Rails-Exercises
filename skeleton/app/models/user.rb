class User < ActiveRecord::Base
  # Gets enrollments for a user by calling the Enrollments
  #   table using our id as the Enrollment student_id
  has_many :enrollments,
    :primary_key => :id,
    :foreign_key => :student_id,
    :class_name => 'Enrollment'

  # Gets courses that a user is enrolled in by
  #   finding all course_ids in enrollments that
  #   have our id.
  has_many :enrolled_courses,
    :through => :enrollments,
    :source => :course
    # :primary_key => :id,
    # :foreign_key => :id,
    # :class_name => 'Course'
end
