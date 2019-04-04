<jsp:directive.include file="includes/top.jsp" />
<div class="bx--row">
    <div data-notification class="bx--inline-notification bx--inline-notification--success cas--message-center" role="alert">
        <div class="bx--inline-notification__details">
            <svg focusable="false" preserveAspectRatio="xMidYMid meet" style="will-change: transform;" xmlns="http://www.w3.org/2000/svg" class="bx--inline-notification__icon" width="20" height="20" viewBox="0 0 20 20" aria-hidden="true"><path d="M10 1c-4.9 0-9 4.1-9 9s4.1 9 9 9 9-4 9-9-4-9-9-9zM8.7 13.5l-3.2-3.2 1-1 2.2 2.2 4.8-4.8 1 1-5.8 5.8z"></path><path d="M8.7 13.5l-3.2-3.2 1-1 2.2 2.2 4.8-4.8 1 1-5.8 5.8z" data-icon-path="inner-path" opacity="0"></path></svg>
            <div class="bx--inline-notification__text-wrapper">
                <p class="bx--inline-notification__title"><spring:message code="screen.success.header" /></p>
                <p class="bx--inline-notification__subtitle"><spring:message code="screen.success.success" arguments="${principal.id}"/> <spring:message code="screen.success.security" /></p>
            </div>
        </div>
    </div>
</div>
<jsp:directive.include file="includes/bottom.jsp" />

