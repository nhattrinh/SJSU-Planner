module SemestersHelper

    def grade_weight (grade)
        num_grade = case grade
            when "A" then 4.0
            when "A-" then 3.7
            when "B+" then 3.29
            when "B-" then 2.7
            when "B" then 3.0
            when "C+" then 2.3
            when "C" then 2.0
            when "C-" then 1.7
            when "D+" then 1.3
            when "D" then 1.0
            when "D-"then 0.69
            else 0.0
        end
        return num_grade
    end

    def alphabetic_grade (average)
        if (average == nil)
            return nil
        elsif (average == 4.0) 
            return "A"
        elsif (average<4 && average>3.7 || average == 3.7) 
            return "A-"
        elsif (average< 3.7 && average>3.29 || average == 3.29) 
            return "B+"
        elsif (average< 3.29 && average>3.0 || average == 3.0) 
            return "B"
        elsif (average< 3.0 && average>2.7 || average == 2.7) 
            return "B-"
        elsif (average<2.7 && average>2.3 || average == 2.3) 
            return "C+"
        elsif (average<2.3 && average>2.0 || average == 2.0) 
            return "C"
        elsif (average< 2.0 && average>1.7 || average == 1.7) 
            return "C-"
        elsif (average< 1.7 && average>1.3 || average == 1.3) 
            return "D+"
        elsif (average< 1.3 && average>1.0 || average == 1.0) 
            return "D"
        elsif (average< 1 && average>0.69 || average == 0.69) 
            return "D-"
        else 
            return "F"
        end
    end
   
    def grade_point_average (semester)
        if (!semester.courses.empty?)
        
            total = 0
            credits = 0
            semester.courses.each do |course|
                unless course.grade.eql?("") 
                    credits += course.credits
                end
                total += grade_weight(course.grade)*course.credits
            end
        total = total/credits
        return total
        else
            return nil
        end
    end

        def total_num_of_units (semester)
            numCredits = 0
            if (!semester.courses.empty?)
                semester.courses.each do |course|
                    numCredits += course.credits
                end
            end
            return numCredits
        end

        def units_so_far (semesters)
            units = 0
            semesters.each do |semester|
                units += total_num_of_units(semester)
            end
            return units
        end 

        def cumulative_GPA (semesters)
            totalGPA = 0
            semesters.each do |semester|
                    semGPA = grade_point_average(semester)
                    if (semGPA != nil)
                        semUnits = total_num_of_units(semester)
                        semPoints = semGPA*semUnits
                        totalGPA += semPoints
                    end
            end
            return totalGPA/units_so_far(semesters)
        end

       


end
