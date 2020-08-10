#class for Model2 goes here
#Feel free to change the name of the class
class Student
    attr_accessor :grade
    attr_reader :name

    @@all = []

    def initialize(name, grade)
        @name = name
        @grade = grade
        @@all << self
    end

    def self.all
        @@all
    end

    def my_classrooms
        Classroom.all.filter do |class_num|
            class_num.student == self
        end
    end
    
    def my_teachers
        my_classrooms.map do |classroom|
            classroom.teacher.name
        end  
    end

end
