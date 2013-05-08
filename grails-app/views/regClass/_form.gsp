<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'classInstructor', 'error')} required">
	<label for="classInstructor">
		<g:message code="regClass.classInstructor.label" default="Class Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classInstructor" name="classInstructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.classInstructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'code', 'error')} ">
	<label for="code">
		<g:message code="regClass.code.label" default="Code" />
		
	</label>
	<g:textField name="code" value="${regClassInstance?.code}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="regClass.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" required="" value="${regClassInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'enrolledStudents', 'error')} ">
	<label for="enrolledStudents">
		<g:message code="regClass.enrolledStudents.label" default="Enrolled Students" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.enrolledStudents?}" var="e">
    <li><g:link controller="enrollment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="regClass.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${regClassInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'registrationSheets', 'error')} ">
	<label for="registrationSheets">
		<g:message code="regClass.registrationSheets.label" default="Registration Sheets" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.registrationSheets?}" var="r">
    <li><g:link controller="registrationSheet" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registrationSheet" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registrationSheet.label', default: 'RegistrationSheet')])}</g:link>
</li>
</ul>

</div>

