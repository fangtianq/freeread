<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${pageContext.request.contextPath }/">WOO
                READ</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <c:forEach items="${allNovelClasses}" var="classes">
                    <li>
                        <a href="${pageContext.request.contextPath}/novelHead/recommend?className=${classes.novelClassName}">${classes.novelClassName}</a>
                    </li>
                </c:forEach>
            </ul>
            <div>
                <form class="navbar-form navbar-right" role="search"
                      action="${pageContext.request.contextPath}/novelHead/novelSearchResult"
                      method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search" name="searchNovelName">
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                    <%--登录后显示[用户名]和[个人中心]--%>
                </form>
            </div>
            <sec:authorize access="isAuthenticated()">
                <sec:authentication property="principal.user" var="user"/>
                <%--<button type="button" class="btn btn-default navbar-btn">${user.userName}的个人中心</button>--%>
                <button class="btn btn-default navbar-btn"
                        onclick="location.href='${pageContext.request.contextPath}/user/userCenterPage'">
                    个人中心
                </button>

            </sec:authorize>
        </div>
    </div>

</nav>