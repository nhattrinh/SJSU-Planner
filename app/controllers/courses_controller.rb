class CoursesController < ApplicationController
  before_action :set_courses
  before_action :set_course, only: [:show, :edit, :update, :destroy]

  # GET semesters/1/courses
  def index
    @courses = @semester.courses
  end

  # GET semesters/1/courses/1
  def show
  end

  # GET semesters/1/courses/new
  def new
    @course = @semester.courses.build
  end

  # GET semesters/1/courses/1/edit
  def edit
  end

  # POST semesters/1/courses
  def create
    @course = @semester.courses.build(course_params)

    if @course.save
      redirect_to([@course.semester, @course], notice: 'Course was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT semesters/1/courses/1
  def update
    if @course.update_attributes(course_params)
      redirect_to([@course.semester, @course], notice: 'Course was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE semesters/1/courses/1
  def destroy
    @course.destroy

    redirect_to semester_courses_url(@semester)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_courses
      @semester = Semester.find(params[:semester_id])
    end

    def set_course
      @course = @semester.courses.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_params
      params.require(:course).permit(:subject, :number, :credits, :grade, :semester_id)
    end
end
