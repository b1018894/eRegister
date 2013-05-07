package uk.ac.shu.webarch.eregister


class Enrollment {

  Student student
  RegClass regClass

  static constraints = {
  }

  static mapping = {
    table 'course_student'
    student column: 'student_fk'
    regClass column: 'reg_class_fk'
  }
}
