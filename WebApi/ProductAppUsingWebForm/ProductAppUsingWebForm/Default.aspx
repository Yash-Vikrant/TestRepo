<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProductAppUsingWebForm._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <script src="Scripts/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        function getProducts() {
            $.getJSON("api/Product",
                function (data) {
                    $('#products').empty(); // Clear the table body.

                    // Loop through the list of products.
                    $.each(data, function (key, val) {
                        // Add a table row for the product.
                        //var row = "<td>" + val.Name + "</td><td>" + val.Price +"</td>";
                        //$("<tr/>", { text: row })  // Append the name.
                       // ("<tr><td>" + val.Name + "</td><td>" + val.Price + "</td></tr>").appendTo($('#products'));
                        $('#products').append(("<tr><td>" + val.Name + "</td><td>" + val.Price + "</td></tr>"));
                    });
                });
        }
        $(document).ready(getProducts);
</script>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
      <h2>Products</h2>
    <table>
    <thead>
        <tr><th>Name</th><th>Price</th></tr>
    </thead>
    <tbody id="products">
    </tbody>
    </table>
</asp:Content>
