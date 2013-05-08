package uk.ac.shu.webarch.eregister

class Student {

  String fullStudentName
  String studentNumber
  String notes

  
 Set studentRegister
 Set enrolled


	static hasMany=[studentRegister:RegisterEntry, enrolled:Enrollment ]
	static mappedBy=[studentRegister:'student', enrolled:'student']

 
  static constraints = {
    fullStudentName(nullable:false, blank:false,maxSize:256);
    studentNumber(nullable:false, blank:false,maxSize:256);
  }

static mapping = {
  table 'enrollment'
   notes column: 'student_notes', type:'text'
}
}
