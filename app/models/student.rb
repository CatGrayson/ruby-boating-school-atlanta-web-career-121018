class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, test_status, instructor)
    test = BoatingTest.new(self, test_name, test_status, instructor)
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end

  def grade_percentage(name)
    all_tests = BoatingTest.all.select do |test|
      test.student.first_name == name
    end
      # all_tests.count
  # end
    total = all_tests.count

    passed_tests = all_tests.select do |test|
      test.test_status == "passed"
    end

    passed_count = passed_tests.count

    passed_count/total.to_f
  end
#get all the students
#get all their tests var: all_tests
#.count for total
#iterate for percentage
end
