require_relative 'lib/cohort_repository'
require_relative 'lib/database_connection'
DatabaseConnection.connect('student_directory_2')

cohort = CohortRepository.new

results = cohort.find_with_students(5)

puts "Cohort: #{results.name}\nStart date: #{results.starting_date}"
results.students.each_with_index { |student, id|
  puts "#{id + 1}: #{student.name}"
}