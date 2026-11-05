
<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Inventory.aspx.cs"
    Inherits="InventoryManagement.Inventory" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Inventory Management System</title>
    <link href="Content/Inventory.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">

<div class="container">

    <h1>Inventory Management System</h1>
    <p class="subtitle">Manage your products and stock</p>

    <div class="form-box">
        <h2>Product Details</h2>

        <asp:HiddenField ID="hfProductID" runat="server" />

        <label>Product Name</label>
        <asp:TextBox ID="txtProductName" runat="server"
            CssClass="input" placeholder="Enter product name" />

        <label>Category</label>
        <asp:TextBox ID="txtCategory" runat="server"
            CssClass="input" placeholder="Enter category" />

        <label>Quantity</label>
        <asp:TextBox ID="txtQuantity" runat="server"
            CssClass="input" TextMode="Number"
            placeholder="Enter quantity" />

        <label>Price</label>
        <asp:TextBox ID="txtPrice" runat="server"
            CssClass="input" TextMode="Number"
            placeholder="Enter price" />

        <label>Supplier Name</label>
        <asp:TextBox ID="txtSupplier" runat="server"
            CssClass="input" placeholder="Enter supplier name" />

        <div class="buttons">
            <asp:Button ID="btnSave" runat="server"
                Text="Add Product" CssClass="btn save"
                OnClick="btnSave_Click" />

            <asp:Button ID="btnClear" runat="server"
                Text="Clear" CssClass="btn clear"
                CausesValidation="false"
                OnClick="btnClear_Click" />
        </div>

        <asp:Label ID="lblMessage" runat="server"
            CssClass="message" />
    </div>

    <div class="table-box">
        <h2>Product Inventory</h2>

        <asp:GridView ID="gvProducts" runat="server"
            AutoGenerateColumns="False"
            DataKeyNames="ProductID"
            CssClass="grid"
            OnSelectedIndexChanged="gvProducts_SelectedIndexChanged"
            OnRowDeleting="gvProducts_RowDeleting"
            EmptyDataText="No products available.">

            <Columns>

                <asp:BoundField DataField="ProductID"
                    HeaderText="ID" />

                <asp:BoundField DataField="ProductName"
                    HeaderText="Product Name" />

                <asp:BoundField DataField="Category"
                    HeaderText="Category" />

                <asp:BoundField DataField="Quantity"
                    HeaderText="Quantity" />

                <asp:BoundField DataField="Price"
                    HeaderText="Price"
                    DataFormatString="{0:N2}" />

                <asp:BoundField DataField="SupplierName"
                    HeaderText="Supplier" />

                <asp:CommandField ShowSelectButton="True"
                    SelectText="Edit" />

                <asp:CommandField ShowDeleteButton="True"
                    DeleteText="Delete" />

            </Columns>
        </asp:GridView>

    </div>
</div>

</form>
</body>
</html>
