<!--THis is going to be the register area where an actual class takes the register -->
<html>
<head>
<meta name="layout" content="main"/>
		<title>Classess Available</title>
<a href="http://localhost:8080/eRegister/"><--Home</a>
</head>
  <body>
    <h1 style="text-align:center; padding-top:5px;">Classess</h1><br/>

    <table>
      <thead style="background:light green;font-weight:bold;font-colour:white;">
        <tr>
          <td>Course Name</td>
          <td>Course Code</td>
          <td>Class Name</td>
          <td>Instructor</td>
	<td>Register</td>
        </tr>
      </thead>
      <tbody>
<!--variable used to identify classList-->

        <g:each in="${classList}" var="c">
          <tr>
<!--Is used to display the particular data the need to display from different classes such as Instructor Name when clicked it will led to the mapping which is courseHome which you wiol find more information about what ypu have clicked-->
<!--This was not implemented successfully-->
            <td><g:link mapping="courseHome"
                        params="${[courseCode:c.courseCode]}">${c.courseName}</g:link></td>
            <td><g:link mapping="courseHome"
                        params="${[courseCode:c.courseCode]}">${c.courseCode}</g:link></td>
            <td><g:link mapping="classHome"
                        params="${[courseCode:c.courseCode,classCode:c.classCode]}">${c.className}</g:link></td>
            <td>${c.instructorName}</td>

       

          </tr>
        </g:each>
      </tbody>
    </table>

  </body>
</html>
