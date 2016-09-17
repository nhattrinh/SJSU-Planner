class CoursesController < ApplicationController
    def create
        @semester = Semester.find(params[:semester_id])
        @course = @semester.courses.create(course_params)
        redirect_to semester_path(@semester)
    end

    def destroy
        @semester = Semester.find(params[:semester_id])
        @course = @semester.courses.find(params[:id])
        @course.destroy
        redirect_to semester_path(@semester)
    end

    def edit
        @semester = Semester.find(params[:semester_id])
        @course = @semester.courses.find(params[:id])
    end

     def update
        @semester = Semester.find(params[:semester_id])
        @course = @semester.courses.find(params[:id])
        if@course.update(course_params)
            redirect_to @semester
        else
            render 'edit'
        end
    end

private 
    def course_params
         params.require(:course).permit(:subject, :number, :credits)
    end
end
