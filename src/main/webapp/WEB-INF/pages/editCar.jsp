<%-- 
    Document   : addCar
    Created on : Nov 16, 2020, 10:24:10 AM
    Author     : Andreea
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<t:pageTamplate pageTitle="Edit Car">
    <h1>Edit Car</h1>
    <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">
        <div class=row">
            <div class="col-md-6 nb-3">
                <label for="licence_plate">License Plate</label>
                <input type="text" class="form-control" id="license_plate" name="license_plate" placeholder="License plate"  required value ="${car.licensePlate}"/><!-- comment -->
                <div class="invalid-feedback">
                    License Plate is required.
                </div>
            </div>
        </div>
        <div class=row">
            <div class="col-md-6 nb-3">
                <label for="parking_spot">Parking Spot</label>
                <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="Parking spot"  required value ="${car.parkingSpot}"/><!-- comment -->
                <div class="invalid-feedback">
                    Parking Spot is required.
                </div>
            </div>
        </div>
        <div class=row">
            <div class="col-md-6 nb-3">
                <label for="owner_id">Owner</label>
                <select class="custom-select d-block w-100" id="owner_id" name="owner_id"  required><!-- comment -->
                    <option value="">Choose...</option>
                    <c:forEach var="user" items ="${users}" varStatus="status">
                        <option value ="${user.id}">${user.username eq user.username ? 'selected' : ''}>${user.username}</option>
                    </c:forEach>
                </select>
                 <input type="hidden" name="car_id" value ="${car.id}"/>
                <button class=" btn btn-primary btn-lg btn-block" type="submit">Save</button>
                    <div class="invalid-feedback">
                    Owner is required.
                   
                </div>
            </div>
        </div>
    </form>

        
         <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
        
    
</t:pageTamplate>
