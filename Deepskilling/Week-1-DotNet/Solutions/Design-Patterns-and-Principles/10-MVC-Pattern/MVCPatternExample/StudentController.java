public class StudentController {


    Student student;
    StudentView view;


    public StudentController(Student student, StudentView view){

        this.student=student;
        this.view=view;

    }


    public void display(){

        view.displayStudentDetails(student);

    }

}