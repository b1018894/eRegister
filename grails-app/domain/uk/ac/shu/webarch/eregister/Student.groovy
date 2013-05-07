package uk.ac.shu.webarch.eregister

class Student {

  String fullStudentName
  String studentNumber
  String notes

  
  Set courses


  Set classAtts

 
  static hasMany = [
    courses: Enrollment,
    classAtts: RegisterEntry
  ]

  static mappedBy = [
    courses:'student',
    classAtts:'student'
  ]

 
  static constraints = {
    fullStudentName(nullable:false, blank:false,maxSize:256);
    studentNumber(nullable:false, blank:false,maxSize:256);
  }

static mapping = {
   notes column: 'student_notes', type:'text'
}
}
