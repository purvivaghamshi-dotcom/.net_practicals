
using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagement
{
    public partial class Inventory : Page
    {
        string cs = ConfigurationManager
            .ConnectionStrings["InventoryDB"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadProducts();
            }
        }

        // READ: Display all products
        private void LoadProducts()
        {
            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT * FROM Products";

                using (SqlDataAdapter da = new SqlDataAdapter(query, con))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    gvProducts.DataSource = dt;
                    gvProducts.DataBind();
                }
            }
        }

        // CREATE: Add new product or UPDATE existing product
        protected void btnSave_Click(object sender, EventArgs e)
        {
            int quantity;
            decimal price;

            if (string.IsNullOrWhiteSpace(txtProductName.Text) ||
                string.IsNullOrWhiteSpace(txtCategory.Text) ||
                string.IsNullOrWhiteSpace(txtSupplier.Text))
            {
                lblMessage.Text = "Please fill all product details.";
                return;
            }

            if (!int.TryParse(txtQuantity.Text, out quantity) ||
                quantity < 0)
            {
                lblMessage.Text = "Enter a valid quantity.";
                return;
            }

            if (!decimal.TryParse(txtPrice.Text, out price) ||
                price < 0)
            {
                lblMessage.Text = "Enter a valid price.";
                return;
            }

            using (SqlConnection con = new SqlConnection(cs))
            {
                con.Open();

                string query;

                if (string.IsNullOrEmpty(hfProductID.Value))
                {
                    // CREATE
                    query = @"INSERT INTO Products
                    (ProductName, Category, Quantity, Price, SupplierName)
                    VALUES
                    (@ProductName, @Category, @Quantity, @Price, @SupplierName)";
                }
                else
                {
                    // UPDATE
                    query = @"UPDATE Products SET
                    ProductName=@ProductName,
                    Category=@Category,
                    Quantity=@Quantity,
                    Price=@Price,
                    SupplierName=@SupplierName
                    WHERE ProductID=@ProductID";
                }

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.Add("@ProductName", SqlDbType.VarChar, 100)
                        .Value = txtProductName.Text.Trim();

                    cmd.Parameters.Add("@Category", SqlDbType.VarChar, 50)
                        .Value = txtCategory.Text.Trim();

                    cmd.Parameters.Add("@Quantity", SqlDbType.Int)
                        .Value = quantity;

                    SqlParameter priceParam =
                        cmd.Parameters.Add("@Price", SqlDbType.Decimal);

                    priceParam.Precision = 10;
                    priceParam.Scale = 2;
                    priceParam.Value = price;

                    cmd.Parameters.Add("@SupplierName", SqlDbType.VarChar, 100)
                        .Value = txtSupplier.Text.Trim();

                    if (!string.IsNullOrEmpty(hfProductID.Value))
                    {
                        cmd.Parameters.Add("@ProductID", SqlDbType.Int)
                            .Value = Convert.ToInt32(hfProductID.Value);
                    }

                    cmd.ExecuteNonQuery();
                }
            }

            lblMessage.Text = string.IsNullOrEmpty(hfProductID.Value)
                ? "Product added successfully!"
                : "Product updated successfully!";

            ClearFields();
            LoadProducts();
        }

        // SELECT: Load product details for editing
        protected void gvProducts_SelectedIndexChanged(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(
                gvProducts.SelectedDataKey.Value);

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "SELECT * FROM Products WHERE ProductID=@ID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;

                    con.Open();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        if (dr.Read())
                        {
                            hfProductID.Value = dr["ProductID"].ToString();
                            txtProductName.Text = dr["ProductName"].ToString();
                            txtCategory.Text = dr["Category"].ToString();
                            txtQuantity.Text = dr["Quantity"].ToString();
                            txtPrice.Text = dr["Price"].ToString();
                            txtSupplier.Text = dr["SupplierName"].ToString();

                            btnSave.Text = "Update Product";
                            lblMessage.Text = "Edit product details below.";
                        }
                    }
                }
            }
        }

        // DELETE: Remove a product
        protected void gvProducts_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int id = Convert.ToInt32(
                gvProducts.DataKeys[e.RowIndex].Value);

            using (SqlConnection con = new SqlConnection(cs))
            {
                string query = "DELETE FROM Products WHERE ProductID=@ID";

                using (SqlCommand cmd = new SqlCommand(query, con))
                {
                    cmd.Parameters.Add("@ID", SqlDbType.Int).Value = id;

                    con.Open();
                    cmd.ExecuteNonQuery();
                }
            }

            lblMessage.Text = "Product deleted successfully!";

            ClearFields();
            LoadProducts();
        }

        // CLEAR: Reset all fields
        protected void btnClear_Click(object sender, EventArgs e)
        {
            ClearFields();
            lblMessage.Text = "";
        }

        private void ClearFields()
        {
            hfProductID.Value = "";
            txtProductName.Text = "";
            txtCategory.Text = "";
            txtQuantity.Text = "";
            txtPrice.Text = "";
            txtSupplier.Text = "";

            btnSave.Text = "Add Product";
        }
    }
}
