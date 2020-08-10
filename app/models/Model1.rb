#class for Model1 goes here
#Feel free to change the name of the class
class Teacher
    attr_accessor :yrs_exp, :subject
    attr_reader :name

    @@all = []

    def initialize(name, yrs_exp, subject)
        @name = name
        @yrs_exp = yrs_exp
        @subject = subject
        @@all << self
    end

    def self.all
        @@all
    end

    def my_students
        Classroom.all.filter do |students|
            students.teacher == self!
        end
    end



end
