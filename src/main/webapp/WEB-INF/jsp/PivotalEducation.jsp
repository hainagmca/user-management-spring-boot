<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>

<html lang="en">

<head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="apple-touch-icon" sizes="180x180" href="images/apple-touch-icon.png">
        <link rel="icon" type="image/png" sizes="32x32" href="images/favicon-32x32.png">
        <link rel="icon" type="image/png" sizes="16x16" href="images/favicon-16x16.png">
        <link rel="manifest" href="webmanifest">

        <meta name="msapplication-TileColor" content="#5daed9">
        <meta name="theme-color" content="#2c3248">
        <title>${assignmentsPojo.pageTitile}</title>
        <link href="css/css" rel="stylesheet">
        <link href="css/app.css" rel="stylesheet">
</head>

<body>
        <div class="main-content">
                <div>
                        <div>
                                <h2>Cohorts</h2>
                                <h1>${assignmentsPojo.batchName}</h1>
                        </div>
                        <section>
                                <div class="desktop-only">
                                        <div class="grid-wrapper">
                                                <div class="grid">
                                                        <div class="grid-content">
                                                                <table>
                                                                        <thead>
                                                                                <tr>
                                                                                        <th></th>
                                                                                        <th></th>
                                                                                        <th class="title">
                                                                                                <div>Prerequisites</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Installations</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Assignment
                                                                                                        Submission</div>
                                                                                        </th>
                                                                                        <th></th>
                                                                                        <th class="title">
                                                                                                <div>Spring Boot
                                                                                                        Developer</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Spring Boot App
                                                                                                </div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Configuring an App
                                                                                                </div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Deployment
                                                                                                        Pipelines</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Spring MVC with
                                                                                                        REST endpoints
                                                                                                </div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>CF Services &amp;
                                                                                                        Database
                                                                                                        migrations</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>JDBC</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Health Monitoring
                                                                                                </div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Scaling</div>
                                                                                        </th>
                                                                                        <th></th>
                                                                                        <th class="title">
                                                                                                <div>Spring Cloud
                                                                                                        Developer</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Deploying
                                                                                                        distributed
                                                                                                        systems</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Service discovery
                                                                                                </div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Circuit Breaker
                                                                                                </div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Security</div>
                                                                                        </th>
                                                                                        <th>
                                                                                                <div>Config server</div>
                                                                                        </th>
                                                                                </tr>
                                                                                <tr>
                                                                                        <!--Nagendra-->
                                                                                        <th class="title fixed-column">
                                                                                                <div>Progress (of
                                                                                                        ${assignmentsPojo.studentCount}
                                                                                                        students)</div>
                                                                                        </th>
                                                                                        <th colspan="2"></th>
                                                                                        <th>-</th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab1SucessCount}
                                                                                         </th>
                                                                                        <th colspan="2"></th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab2SucessCount}
                                                                                       </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab3SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab4SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 69%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab5SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab6SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab7SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab8SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 81%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab9SucessCount}
                                                                                        </th>
                                                                                        <th colspan="2"></th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 56%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab10SucessCount}
                                                                                         </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 56%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab11SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 56%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab12SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 56%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab13SucessCount}
                                                                                        </th>
                                                                                        <th
                                                                                                style="background: linear-gradient(0deg, rgba(0, 0, 0, 0.1) 56%, white 100%) white; font-weight: 600;">
                                                                                                ${assignmentsPojo.lab14SucessCount}
                                                                                        </th>
                                                                                </tr>
                                                                        </thead>



                                                                        <tbody>

                                                                                <!-- nagendra -->
                                                                                <c:forEach
                                                                                        items="${assignmentsPojo.studentList}"
                                                                                        var="student">
                                                                                        <tr class="" sttle="line-height: 2.2">
                                                                                                <td
                                                                                                        style="height:auto">
                                                                                                        <div>${student.name}
                                                                                                        </div>
                                                                                                </td>

                                                                                                <td colspan="2"></td>
                                                                                                <c:if
                                                                                                        test="${student.lab1Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab1Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab1Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>


                                                                                                <c:if
                                                                                                        test="${student.lab2Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab2Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab2Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>



                                                                                                <td colspan="2"></td>

                                                                                                <c:if
                                                                                                        test="${student.lab3Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab3Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab3Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab4Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab4Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab4Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab5Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab5Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab5Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab6Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab6Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab6Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab7Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab7Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab7Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab8Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab8Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab8Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab9Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab9Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab9Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab10Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab10Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab10Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <!-- Nagendra till lab 10 done -->

                                                                                                <td colspan="2"></td>

                                                                                                <c:if
                                                                                                        test="${student.lab11Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab11Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab11Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>


                                                                                                <c:if
                                                                                                        test="${student.lab12Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab12Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab12Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab13Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab13Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab13Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab14Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab14Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab14Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                                <c:if
                                                                                                        test="${student.lab15Status == 'na'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                -
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab15Status == 'yes'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/checkmark.png"
                                                                                                                        height="20"
                                                                                                                        width="20"></a>
                                                                                                        </td>
                                                                                                </c:if>
                                                                                                <c:if
                                                                                                        test="${student.lab15Status == 'no'}">
                                                                                                        <td
                                                                                                                class="unknown">
                                                                                                                <img src="images/wrong-cross.png"
                                                                                                                        height="20"
                                                                                                                        width="20">
                                                                                                        </td>
                                                                                                </c:if>

                                                                                        </tr>

                                                                                </c:forEach> <!-- student list -->











                                                                        </tbody>
                                                                </table>
                                                        </div>
                                                </div>
                                        </div>
                                </div>
                        </section>
                        <div class=""></div>
                        <div class="" style=""></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div></div>
                        <div class="overlay closed"></div>
                        <div class="overlay closed"></div>
                        <div class="overlay closed"></div>
                        <div class="overlay closed"></div>
                        <div class="overlay closed"></div>
                        <div></div>
                </div>
        </div>

        <script type="text/javascript" async="" src="js/analytics.js.download"></script>
        <script src="js/assignments-min.js.download"></script>
        <script src="js/usermenu-min.js.download"></script>
        <script src="js/clipboard.min.js.download"></script>
        <script>
                var params = window.location.search;
                var selectedUnit = null;
                var selectedAssignment = null;

                if (params !== "") {
                        var match = params.match("unit=(.*)&assignment=(.*)");

                        if (match !== null && match.length > 2) {
                                selectedUnit = decodeURI(match[1]);
                                selectedAssignment = decodeURI(match[2]);
                        }
                }

                window.onpopstate = function () {
                        app.ports.onHashChange.send(location.hash);
                };

                app.ports.appLoaded.subscribe(function () {
                        setTimeout(function () {
                                var elements = document.getElementsByClassName("last-started-lab");
                                if (elements.length >= 1) {
                                        var grid = document.getElementsByClassName("grid")[0];
                                        var gridWidth = grid.getBoundingClientRect().width;

                                        var startedLabElement = elements[0];
                                        var startedLabX = startedLabElement.getBoundingClientRect().left;

                                        grid.scrollTo(startedLabX - (gridWidth / 2) + grid.scrollLeft, 0);
                                }
                        });
                });


                document.body.onmousemove = function (event) {
                        app.ports.windowState.send({
                                mouseX: Math.floor(event.clientX),
                                mouseY: Math.floor(event.clientY),
                                innerHeight: Math.floor(window.innerHeight),
                                innerWidth: Math.floor(window.innerWidth),
                                scrollY: Math.floor(window.scrollY),
                                scrollX: Math.floor(window.scrollX)
                        });
                };

        </script>






</body>

</html>