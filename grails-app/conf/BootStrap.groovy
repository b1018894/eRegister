import uk.ac.shu.webarch.eregister.*;

/*this is use to install data in one script, enables to check whether the data exist if nt create it automatically*/
/*this is just a test data to test that the instructorCOntroler, and courseController that it inserts data into the database */

class BootStrap {

    def init = { servletContext ->

	println("BootStrap::init");

	def ian_instructor = Instructor.findByStaffId('646345d') ?: new Instructor(staffId:'646345d',name:'Ian Ibbotson').save();
	def matthew_instructor = Instructor.findByStaffId('244354a') ?: new Instructor(staffId:'244354a',name:'Matthew Love').save();

	/*def web_arch_course = Course.findByCourseCode('443343768') ?: new Course(courseCode:'443343768', 
                                                                          courseName:'WEb Architectures', 
                                                                          description:'Headache for students').save();*/
}

    def destroy = {
    }
}
