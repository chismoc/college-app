class StudentsController < ApplicationController
   before_action :set_student, only: %i[show edit update destroy]
   
    def index
        @students = Student.all
    end

    def new
        @student = Student.new
    end
    def create
        @student = Student.new(student_params)

        respond_to do |format|
          if @student.save
            format.html { redirect_to student_url(@student), notice: "Student was successfully created." }
            format.json { render :show, status: :created, location: @student }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @student.errors, status: :unprocessable_entity }
          end
        end
    end

  
    def show
    end
    def edit
    end

    def update
        respond_to do |format|
            if @student.update(student_params)
                format.html { redirect_to student_url(@student), notice: "Student details was successfully updated." }
                format.json { render :show, status: :ok, location: @student }
            else
                format.html { render :edit, status: :unprocessable_entity }
                format.json { render json: @student.errors, status: :unprocessable_entity }
            end
        end
    end

    def destroy
        @student.destroy
        redirect_to students_path , notice: 'Student has been deleted successfully'
    end

    private
    def student_params
        params.require(:student).permit(:first_name, :last_name, :email,:date_of_birth,:local_address, :permanent_address,:permanent_contact_number,:alternate_contact_number)
    end

    def set_student
        @student = Student.find(params[:id])
    end
end