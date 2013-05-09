<!--THis is going to be the register area where an actual class takes the register -->
<html>
<head>
<meta name="layout" content="main"/>
		<title>Classess Available</title>

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
        </tr>
      </thead>
      <tbody>
<!--variable used to identify classList-->

        <g:each in="${classList}" var="c">
          <tr>
<!--Is used to display the particular data the need to display from different classes such as Instructor Name-->

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
