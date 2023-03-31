require_relative 'database_connection'
require_relative 'student'
require_relative 'cohort'

class CohortRepository
  def find_with_students(id)
    output = []
    sql = 'SELECT students.id AS student_id, students.name AS student_name, students.cohort_id, 
    cohorts.id, cohorts.name, cohorts.starting_date
    FROM students
    JOIN cohorts on students.cohort_id = cohorts.id
    WHERE cohorts.id = $1;'
    params = [id]
    result = DatabaseConnection.exec_params(sql, params)

    cohort = Cohort.new
    cohort.id = result.first['id']
    cohort.name = result.first['name']
    cohort.starting_date = result.first['starting_date']

    result.each {|item|
      student = Student.new
      student.id = item['student_id']
      student.name = item['student_name']
      cohort.students << student
    }
    return cohort
  end
end