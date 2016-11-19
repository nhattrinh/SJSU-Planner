module StudentsHelper

def acting_student
    if @acting_student.nil?
        @acting_student = Student.find_by(user: acting_user)
    else
        @acting_student
    end
end

def clear_acting_student
    @acting_student = nil
end

end
