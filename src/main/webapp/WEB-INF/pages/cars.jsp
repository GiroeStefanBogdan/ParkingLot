
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTamplate pageTitle ="Cars">
    <h1>Cars</h1>
    
    <div class="jumbotron">
  <h1 class="display-4">Cars</h1>
 <!-- <p class="lead"></p> -->
  <hr class="my-4">
  <!-- <p>It uses utility classes for typography and spacing to space content out within the larger container.</p> -->
  <a class="btn btn-primary btn-lg" href="#" role="button">Add Car</a>
</div>
    
    <c:forEach var="car" items="${cars}" varStatus="status">
    <div class ="row">
        <div class ="col-md-4">
            ${car.licensePlate}
        </div> 
          <div class ="col-md-4">
            ${car.parkingSpot}
        </div>
          <div class ="col-md-4">
           ${car.username}
        </div>
    </div>
    
    </c:forEach>  
  <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTamplate>