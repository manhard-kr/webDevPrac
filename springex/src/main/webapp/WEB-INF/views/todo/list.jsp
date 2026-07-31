<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- BootStrap CSS-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-body-tertiary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">테스트네비게이션</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                    </a>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" aria-disabled="true">Disabled</a>
                </li>
            </ul>
            <form class="d-flex" role="search">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                <button class="btn btn-outline-success" type="submit">Search</button>
            </form>
        </div>
    </div>
</nav>
<div class="row content">
    <div class="card" style="width: 100%;">
        <div class="card-header">
            Featured
        </div>
        <div class="card-body">
            <h5 class="card-title">Card title</h5>
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Tno</th>
                        <th scope="col">Title</th>
                        <th scope="col">Writer</th>
                        <th scope="col">DueDate</th>
                        <th scope="col">Finished</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${responseDTO.dtoList}" var="dto">
                        <tr>
                            <th scope="row"><c:out value="${dto.tno}"/></th>
                            <td><a href="/todo/read?tno=${dto.tno}" class="text-decoration-none"><c:out value="${dto.title}"/></a></td>
                            <td><c:out value="${dto.writer}"/></td>
                            <td><c:out value="${dto.dueDate}"/></td>
                            <td><c:out value="${dto.finished}"/></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <div class="float-end">
                <ul class="pagination flex-wrap">
                    <c:if test="${responseDTO.prev}">
                        <li class="page-item">
                            <a class="page-link">Previous</a>
                        </li>
                    </c:if>

                    <c:forEach begin="${responseDTO.start}" end="${responseDTO.end}" var="num">
                        <li class="page-item ${responseDTO.page == num ? "active": ""}">
                            <a class="page-link" data-num="${num}">${num}</a></li>
                    </c:forEach>

                    <c:if test="${responseDTO.next}">
                        <li class="page-item">
                            <a class="page-link">Next</a>
                        </li>
                    </c:if>
                </ul>

                <script>
                    document.querySelector(".pagination").addEventListener("click", function(e){
                        e.preventDefault()
                        e.stopPropagation()

                        const target = e.target

                        if(target.tagName !== 'A'){
                            return
                        }
                        const num = target.getAttribute("data-num")

                        self.location = `/todo/list?page=\${num}`
                    }, false)
                </script>
            </div>
        </div>
    </div>
</div>
<div class="row footer">
    <div class="row fixed-bottom" style="z-index: -100">
        <footer class="py-1 my-1">
            <p class="text-center text-muted">Footer</p>
        </footer>
    </div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>