package uk.ac.shu.webarch.eregister


class Course {
  
  String courseName
  String courseCode
  String description
  
int myIntProp=1

  Set classes

  static constraints = {
    courseCode maxSize: 20
  }

  static hasMany = [classes: RegClass]
  static mappedBy = [classes: 'course']

}
