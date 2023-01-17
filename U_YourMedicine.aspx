<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="U_YourMedicine.aspx.cs" Inherits="MedilapFinal.U_YourMedicine" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <script type="text/javascript">
       $(document).ready(function () {
           $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).DataTable(
               {
                   "sDom": "<'row'<'col-md-12'l>r>t<'row'<'col-md-10'i><'col-md-2'p>>",
                   "oLanguage": { "sSearch": "" },
                   "responsive": true
               }
           )
           $('.dataTables_filter input').attr("placeholder", "Search");
       });

   </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <center>
      <h3>Your Medicines</h3>
   </center>
   <br />
   <div class="row no-gutters">
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MediLapConnectionString %>" SelectCommand="SELECT * FROM [UserMedicineInfo] WHERE ([US_uid] = @US_uid)">
         <SelectParameters>
            <asp:SessionParameter Name="US_uid" SessionField="username" Type="String" />
         </SelectParameters>
      </asp:SqlDataSource>
      <div class="col-lg-12">
         <asp:GridView ID="GridView1" runat="server" Class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="US_uid">
            <Columns>
             
               <asp:BoundField DataField="Ustore_name" HeaderText="Store Name" SortExpression="Ustore_name" />
               <asp:BoundField DataField="Umed_name" HeaderText="Medicine Name" SortExpression="Umed_name" />
               <asp:BoundField DataField="Umed_q" HeaderText="Quantity" SortExpression="Umed_q" />
               <asp:BoundField DataField="Umed_date" HeaderText="Pre-Book Date" SortExpression="Umed_date" />
            </Columns>
         </asp:GridView>
      </div>
   </div>
</asp:Content>