<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<nav class="navbar navbar-default">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><spring:message
					code="application.name" /></a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse">
			<ul class="nav navbar-nav">
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li><a href="javascript:loadEntries()"><spring:message code="menu.entry" /></a></li>
					<li><a href="javascript:loadBlocks()"><spring:message code="menu.block" /></a></li>
					<li><a href="javascript:loadCourses()"><spring:message
								code="menu.course" /></a></li>
                    <li><a href="javascript:loadSections()"><spring:message code="menu.section" /></a></li>
				</sec:authorize>

				<sec:authorize access="hasRole('ROLE_ADMIN') or hasRole('ROLE_FACULTY')">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><spring:message code="menu.faculty" />
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="javascript:viewFacultyProfile()"><spring:message
										code="menu.faculty.viewprofile" /></a></li>
							<li><a href="javascript:loadSchedules()"><spring:message
							code="menu.faculty.viewschedule" /></a></li>
							<sec:authorize access="hasRole('ROLE_ADMIN')">
							<li><a href="javascript:loadFaculties()"><spring:message
										code="menu.faculty.managefaculty" /></a></li>
							</sec:authorize>
						</ul></li>
				</sec:authorize>
				
				<sec:authorize access="hasRole('ROLE_ADMIN')">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><spring:message code="menu.schedule" />
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="javascript:loadSchedules()"><spring:message
										code="menu.schedule.view" /></a></li>
							<li><a href="javascript:viewScheduleGeneration()"><spring:message
										code="menu.schedule.generate" /></a></li>
						</ul></li>
				</sec:authorize>
				<sec:authorize
					access="hasRole('ROLE_ADMIN') or hasRole('ROLE_STUDENT')">
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false"><spring:message code="menu.student" />
							<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="javascript:studentViewSchedule()"><spring:message code="menu.student.viewschedule" /></a></li>
							<li><a href="javascript:viewStudentProfile(${studentId})"><spring:message code="menu.student.view" /></a></li>
							<li><a href='javascript:loadRegisterSection(${studentId})'><spring:message
										code="menu.student.register" /></a></li>
						</ul></li>
				</sec:authorize>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="javascript:logout()"><span
						class="glyphicon glyphicon-log-out"></span> <spring:message
							code="logout.label" /></a></li>
			</ul>
		</div>
		<!-- /.navbar-collapse -->
	</div>
	<!-- /.container-fluid -->
</nav>