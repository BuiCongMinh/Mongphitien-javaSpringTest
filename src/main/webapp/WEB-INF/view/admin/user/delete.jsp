<%@page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <!DOCTYPE html>
            <html lang="en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Delete User</title>

                <!-- add link css  -->
                <link rel="stylesheet" href="/css/main.css">

                <!-- add bootrap  -->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">

            </head>

            <body>
                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-12 mx-auto">
                            <h1>Delete User: ${user.email} </h1>
                            <hr>
                            <div class="card" style="width:60%;">
                                <div class="card-header">
                                    <h2 class="card-title">Do you want delele user: ${user.email} ?</h5>
                                </div>
                                <form:form action="/admin/user/delete" method="post" modelAttribute="user">
                                    <div class="card-body">
                                        <c:if test=" ${user.avartar} != null">
                                            <img src="..." class="card-img-top" alt="...">
                                        </c:if>
                                        <form:input path="id" value="${user.id}" style="display: none;" />


                                        <div class="d-flex flex-column w-25">
                                            <button class="btn btn-danger mt-3"> Confrim </button>
                                            <a href="/admin/user" class="btn btn-success mt-3"> Back To All User </a>
                                        </div>

                                    </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- add bootrap  -->
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

                <!-- add jquery -->
                <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
                    integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
                    crossorigin="anonymous" referrerpolicy="no-referrer"></script>

            </body>

            </html>