module SemestersHelper

    def numeric_grade (grade)
        num_grade = case grade
            when "A" then 90
            when "B" then 80
            when "C" then 70
            when "D" then 60
            else 50
        end
        return num_grade
    end

    def alphabetic_grade (average)
        if (average>=90)
            return "A"
        elsif (average>=80 && average<90)
            return "B"
        elsif (average>=70 && average<80)
            return "C"
        elsif (average>=60 && average<70)
            return "D"
        else 
            return "F"
        end
    end
   
    def grade_point_average (semester)
        total = 0
        semester.courses.each do |course|
            total += numeric_grade(course.grade)
        end
        total = total/semester.courses.count
        return alphabetic_grade(total)
    end

        
        



end
