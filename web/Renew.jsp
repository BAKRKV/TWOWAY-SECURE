
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<style>
    .note
{
    text-align: center;
    height: 80px;
    background: -webkit-linear-gradient(left, #0072ff, #8811c5);
    color: #fff;
    font-weight: bold;
    line-height: 80px;
}
.form-content
{
    padding: 5%;
    border: 1px solid #ced4da;
    margin-bottom: 2%;
}
.form-control{
    border-radius:1.5rem;
}
.btnSubmit
{
    border:none;
    border-radius:1.5rem;
    padding: 1%;
    width: 20%;
    cursor: pointer;
    background: #0062cc;
    color: #fff;
}
</style>
    </head>
    <body>
        <div class="container register-form">
            <div class="form">
                <div class="note">
                    <p>This is the Renew Form </p>
                </div>
                <form action="RenewDB.jsp">
                <div class="form-content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input type="text" class="form-control" name="A" placeholder="Enter your Email" />
                            </div>
                            <div class="form-group">
                                <input type="text" class="form-control" name="B" placeholder="Enter 4 Digit Pin"/>
                            </div>
                            <div class="form-group">
                                <input type="password" class="form-control" name="C" placeholder="Enter new Password"/>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btnSubmit">Submit</button>
                </div>
                    </form>
            </div>
        </div>
    </body>
</html>
