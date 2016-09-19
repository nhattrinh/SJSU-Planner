require 'test_helper'

class CoursesControllerTest < ActionController::TestCase
  setup do
    @semester = semesters(:one)
    @course = courses(:one)
  end

  test "should get index" do
    get :index, params: { semester_id: @semester }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { semester_id: @semester }
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post :create, params: { semester_id: @semester, course: @course.attributes }
    end

    assert_redirected_to semester_course_path(@semester, Course.last)
  end

  test "should show course" do
    get :show, params: { semester_id: @semester, id: @course }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { semester_id: @semester, id: @course }
    assert_response :success
  end

  test "should update course" do
    put :update, params: { semester_id: @semester, id: @course, course: @course.attributes }
    assert_redirected_to semester_course_path(@semester, Course.last)
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete :destroy, params: { semester_id: @semester, id: @course }
    end

    assert_redirected_to semester_courses_path(@semester)
  end
end
