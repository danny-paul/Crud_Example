<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Home.aspx.vb" Inherits="Crud_Example.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>CRUD Example</title>

        <link href="/Content/bootstrap.css" rel="stylesheet" />
        <link href="/Content/datatables.css" rel="stylesheet" />
        <link href="/Content/sweetalert2.css" rel="stylesheet" />
        
    </head>

    <body>
        <form id="form1" runat="server">
            <div></div>
        </form>


        <div class="container">
            <div class="jumbotron text-center">
                <h3>Inventory Logging</h3>
            </div>
            <div>
                <table id="tblInventory" class="table table-hover text-center">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Cost</th>
                            <th>Perishable Item?</th>
                            <th>Quantity In Stock</th>
                            <th>Building</th>
                            <th>City</th>
                            <th>State</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Air Jordans III</td>
                            <td>1.79$</td>
                            <td>Yes</td>
                            <td>1002</td>
                            <td>Nike Warhouse</td>
                            <td>Milwaukee</td>
                            <td>Wisconsin</td>
                        </tr>
                    </tbody>
                    <tfoot></tfoot>
                </table>
            </div>
        </div>
        <div class="modal">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4>Inventory Edit</h4>
                        <button type="button" class="close" data-dimiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body"></div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary">Update Item</button>
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>



    </body>

</html>

<script type="text/javascript" src="/Scripts/jquery-3.4.1.js"></script>
<script type="text/javascript" src="/Scripts/bootstrap.js"></script>
<script type="text/javascript" src="/Scripts/sweetalert2.js"></script>
<script type="text/javascript" src="/Scripts/datatables.js"></script>
<script type="text/javascript" src="/Scripts/Home.js"></script>
