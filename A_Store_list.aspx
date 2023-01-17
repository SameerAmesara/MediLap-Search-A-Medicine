<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="A_Store_list.aspx.cs" Inherits="MedilapFinal.A_Store_list" %>
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
      <h3>Medical Store List</h3>
   </center>
   <br />
   <div class="row no-gutters">
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MediLapConnectionString %>" SelectCommand="SELECT [S_name], [S_cn], [S_state], [S_mail], [S_city], [S_pc], [S_uid], [ac_stat] FROM [MedicalStoreInfo]"></asp:SqlDataSource>
      <div class="col-lg-12">
         <asp:GridView ID="GridView1" runat="server"  Class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="S_uid" DataSourceID="SqlDataSource1">
            <Columns>
               <asp:BoundField DataField="S_uid" HeaderText="Store ID" SortExpression="S_uid" ReadOnly="True" />
               <asp:BoundField DataField="S_name" HeaderText="Name" SortExpression="S_name" />
               <asp:BoundField DataField="S_cn" HeaderText="Contact" SortExpression="S_cn" />
               <asp:BoundField DataField="S_state" HeaderText="State" SortExpression="S_state" />
               <asp:BoundField DataField="S_city" HeaderText="City" SortExpression="S_city" />
               <asp:BoundField DataField="S_pc" HeaderText="Pincode" SortExpression="S_pc" />
               <asp:BoundField DataField="ac_stat" HeaderText="Status" SortExpression="ac_stat" />
            </Columns>
         </asp:GridView>
      </div>
   </div>
</asp:Content>