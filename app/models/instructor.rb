class Instructor

attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
      @@all
  end

  def pass_student(name, test_name)
    student_test = BoatingTest.all.find do |test|
      test.student.first_name == name && test.test_name == test_name
  end
      if student_test != nil
        test.test_status = "passed"
      else
        BoatingTest.new(name, test_name, test_status="passed", self)
      end
    end

  def fail_student(name, test_name)
    student_test = BoatingTest.all.find do |test|
      test.student.first_name == name && test.test_name == test_name
  end

    if student_test != nil
      student_test.test_status = "failed"
    else
      BoatingTest.new(name, test_name, test_status="failed", self)
    end
  end
end
