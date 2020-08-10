#class for Model3 goes here
#Feel free to change the name of the class
class Classroom
    attr_accessor :teacher, :student

    @@all = []

    def initialize(teacher, student)
        @teacher = teacher
        @student = student
        @@all << self
    end

    def self.all
        @@all
    end
  

end
