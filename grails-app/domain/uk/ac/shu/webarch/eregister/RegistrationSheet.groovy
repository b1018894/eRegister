package uk.ac.shu.webarch.eregister

class RegistrationSheet {


  RegClass regClass

  String shortcode


  Date sheetDate

  Set signatories

  String notes

  static hasMany = [signatories:RegisterEntry]
  static mappedBy = [signatories:'regSheet']



  static constraints = {
    regClass(nullable:false, blank:false);
    shortcode(nullable:false, blank:false);
    sheetDate(nullable:false, blank:false);
    notes(nullable:true, blank:true);
  }

  static mapping = {
    notes column: 'course_desc', type:'text'
  }
}
