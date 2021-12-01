<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<title><tiles:insertAttribute name="title" /></title>

<tiles:insertAttribute name="header" />
<tiles:insertAttribute name="scripts" />

    <body class="bg-gradient-primary">

	    <div class="container">

        <!-- Outer Row -->
        <div class="row justify-content-center">

            <div class="col-xl-10 col-lg-12 col-md-9">

                <div class="card o-hidden border-0 shadow-lg my-5">
                    <div class="card-body p-0">
       					<tiles:insertAttribute name="body" />
                    </div>
                </div>
            </div>
         </div>
         
         </div>
    </body>

