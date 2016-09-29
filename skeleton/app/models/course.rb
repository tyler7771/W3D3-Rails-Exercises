class Course < ActiveRecord::Base
  # Gets enrollments for a course by calling the Enrollments
  #  table using our id as the Enrollment course_id.
  has_many :enrollments,
    :primary_key => :id,
    :foreign_key => :course_id,
    :class_name => 'Enrollment'

  # Gets students that are enrolled in a course by
  #  finding all student_ids in enrollments that have
  #  our id.
  has_many :enrolled_students,
    :through => :enrollments,
    :source => :user

  # Gets professors for a class by calling the Users table
  #  using our instructor_id as the User id.
  has_many :professors,
    :primary_key => :instructor_id,
    :foreign_key => :id,
    :class_name => 'User'

  has_many :prereqs,
    :primary_key => :prereq_id,
    :foreign_key => :id,
    :class_name => 'Course'
end
