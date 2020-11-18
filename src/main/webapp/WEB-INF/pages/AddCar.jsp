<%-- 
    Document   : AddCar
    Created on : Nov 18, 2020, 10:29:59 AM
    Author     : Giroe Stefan Bogdan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<t:pageTamplate pageTitle="Add Car">
    <h1>Add Car</h1>
    <form class="needs-validation" novalidate method="POST" action="$(pageContext.request.contextPath)/AddCar">
        <div class ="row">
            <div class="col-md-6 mb-3">
                <label for="license_plate">License Plate</lable>
                <input type ="text" class="form-control" id="license_plate" name="license_plate" placeholder="" value ="" required>
                <div class="invalid-feedback">
                    License Plate is required.
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mb-3">
                    <label for="parking_spot">Parking Spot</label>
                    <input type="text" class="form-control" id="parking_spot" name="parking_spot" placeholder="" value="" required>
                    <div class="invalid-feedback">
                        Parking Spot is required
                        </div>
                </div>
            </div>
            <div class ="row">
                <div class ="col-md-6 mb-3">
                    <label for ="owner_id">Owner</label>
                    <select class="custom-select d-block w-100" id="owner_id" required>
                        <option value="">Choose...</option>
                            
</t:pageTamplate>
