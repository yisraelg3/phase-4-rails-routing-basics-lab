class StudentsController < ApplicationController

    def index
        students = Student.all
        render json: students
    end

    def students
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        student = Student.all.max_by{|student| student.grade}
        render json: student
    end

end
