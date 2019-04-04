<jsp:directive.include file="includes/top.jsp" />

<form:form method="post" id="fm1" commandName="${commandName}" htmlEscape="true">
    <div class="bx--row">
        <div class="bx--col-lg-4 bx--offset-lg-4 bx--col-sm-12">
            <h1 class="cas--heading">Sign in to your account</h1>

            <div
                data-notification
                class="bx--inline-notification bx--inline-notification--error"
                id="cas--error"
                role="alert"
                style="display: none"
                >
                <div class="bx--inline-notification__details">
                    <svg
                        focusable="false"
                        preserveAspectRatio="xMidYMid meet"
                        style="will-change: transform;"
                        xmlns="http://www.w3.org/2000/svg"
                        class="bx--inline-notification__icon"
                        width="20"
                        height="20"
                        viewBox="0 0 20 20"
                        aria-hidden="true"
                        >
                        <path
                            d="M10 1c-5 0-9 4-9 9s4 9 9 9 9-4 9-9-4-9-9-9zm3.5 13.5l-8-8 1-1 8 8-1 1z"
                            ></path>
                        <path
                            d="M13.5 14.5l-8-8 1-1 8 8-1 1z"
                            data-icon-path="inner-path"
                            opacity="0"
                            ></path>
                    </svg>
                    <div class="bx--inline-notification__text-wrapper">
                        <form:errors path="*" id="msg" cssClass="bx--inline-notification__subtitle" element="p" htmlEscape="false" />
                    </div>
                </div>
            </div>

            <div class="bx--form-item">
                <label class="bx--label" for="username"><spring:message code="screen.welcome.label.netid" /></label>
                <c:choose>
                    <c:when test="${not empty sessionScope.openIdLocalId}">
                        <strong><c:out value="${sessionScope.openIdLocalId}" /></strong>
                        <input type="hidden" id="username" name="username" value="<c:out value="${sessionScope.openIdLocalId}" />" />
                    </c:when>
                    <c:otherwise>
                        <spring:message code="screen.welcome.label.netid.accesskey" var="userNameAccessKey" />
                        <form:input cssClass="bx--text-input" cssErrorClass="bx--text-input bx--text-input--invalid" id="username" size="25" tabindex="1" accesskey="${userNameAccessKey}" path="username" autocomplete="off" htmlEscape="true" />
                    </c:otherwise>
                </c:choose>
            </div>
            <div class="bx--form-item">
                <label class="bx--label" for="password"><spring:message code="screen.welcome.label.password" /></label>
                <spring:message code="screen.welcome.label.password.accesskey" var="passwordAccessKey" />
                <form:password cssClass="bx--text-input" cssErrorClass="bx--text-input bx--text-input--invalid" id="password" size="25" tabindex="2" path="password"  accesskey="${passwordAccessKey}" htmlEscape="true" autocomplete="off" />
            </div>

            <%--
            <div class="bx--form-item bx--checkbox-wrapper">
                <input id="warn" class="bx--checkbox" name="warn" value="true" tabindex="3" accesskey="<spring:message code="screen.welcome.label.warn.accesskey" />" type="checkbox" />
                <label for="warn" class="bx--checkbox-label"><spring:message code="screen.welcome.label.warn" /></label>
            </div>

            <div class="bx--form-item bx--checkbox-wrapper">
                <input id="publicWorkstation" class="bx--checkbox" name="publicWorkstation" value="false" tabindex="4" type="checkbox" />
                <label for="publicWorkstation" class="bx--checkbox-label"><spring:message code="screen.welcome.label.publicstation" /></label>
            </div>
            --%>

            <div class="bx--form-item bx--checkbox-wrapper">
                <input type="checkbox" class="bx--checkbox" name="rememberMe" id="rememberMe" value="true" tabindex="5"  />
                <label for="rememberMe" class="bx--checkbox-label"><spring:message code="screen.rememberme.checkbox.title" /></label>
            </div>

            <div class="cas--spacer"></div>
            <div class="bx--form-item">
                <button class="bx--btn bx--btn--secondary" type="submit">
                    <spring:message code="screen.welcome.button.login" />
                    <svg
                        focusable="false"
                        preserveAspectRatio="xMidYMid meet"
                        xmlns="http://www.w3.org/2000/svg"
                        width="16"
                        height="16"
                        viewBox="0 0 16 16"
                        aria-hidden="true"
                        style="will-change: transform; fill: #fff"
                        >
                        <path
                            d="M9.3 3.7l3.8 3.8H1v1h12.1l-3.8 3.8.7.7 5-5-5-5z"
                            ></path>
                    </svg>
                </button>
            </div>
        </div>
    </div>
    <input type="hidden" name="lt" value="${loginTicket}" />
    <input type="hidden" name="execution" value="${flowExecutionKey}" />
    <input type="hidden" name="_eventId" value="submit" />
</form:form>
<spring:theme code="cas.javascript.file" var="casJavascriptFile" text="" />
<script type="text/javascript" src="js/modernizr-custom.js" />"></script>
<script type="text/javascript" src="<c:url value="${casJavascriptFile}?v=2" />"></script>
<jsp:directive.include file="includes/bottom.jsp" />


