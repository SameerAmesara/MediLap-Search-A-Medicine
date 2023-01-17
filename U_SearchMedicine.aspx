<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="U_SearchMedicine.aspx.cs" Inherits="MedilapFinal.U_SearchMedicine" %>
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
      <h3>Search Medicine</h3>
   </center>
   <br />
   <div class="row no-gutters">
      <div class="col-lg-9">
         <div class="input-box mt-10">
            <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="Type Medicine Name Here" ForeColor="White"></asp:TextBox>
         </div>
      </div>
      <div class="col-lg-3 ">
         <center>
            <div class="input-box mt-10">
               <asp:Button class="main-btn " ID="Button1" runat="server" Text="Search"  />
            </div>
         </center>
      </div>
      <br />
      <br />
      <br />
      <br />
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MediLapConnectionString %>" SelectCommand="SELECT [med_name],[med_mfg], [S_name], [S_cn], [S_fa] FROM [StoreMedicineInfo], [MedicalStoreInfo]  WHERE  ([StoreMedicineInfo].[MS_uid] = [MedicalStoreInfo].[S_uid] AND ([StoreMedicineInfo].[med_mfg] = @med_mfg OR [StoreMedicineInfo].[med_name] = @med_name))">
         <SelectParameters>
            <asp:ControlParameter ControlID="TextBox11" Name="med_name" PropertyName="Text" Type="String" />
            <asp:ControlParameter ControlID="TextBox11" Name="med_mfg" PropertyName="Text" Type="String" />
         </SelectParameters>
      </asp:SqlDataSource>
      <div class="col-md-12" >
         <asp:GridView ID="GridView1" class="table table-striped table-bordered table-sm" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" >
            <Columns>
               <asp:BoundField DataField="med_name" HeaderText="Medicine Name" SortExpression="med_name" />
               <asp:BoundField DataField="med_mfg" HeaderText="Manufactured By" SortExpression="med_mfg" />
               <asp:BoundField DataField="S_name" HeaderText="Medical Store Name" SortExpression="S_name" />
               <asp:BoundField DataField="S_cn" HeaderText="Store Contact" SortExpression="S_cn" />
               <asp:BoundField DataField="S_fa" HeaderText="Address" SortExpression="S_fa" />
               <asp:HyperLinkField HeaderText="Map" DataNavigateUrlFields="med_name, S_name" DataNavigateUrlFormatString="U_MapMedicine.aspx?mname={0}&sname={1}" Text="&lt;img src='assets/images/location.png' alt='alternate text' border='0'/&gt;"></asp:HyperLinkField>
            </Columns>
         </asp:GridView>
      </div>
   </div>
</asp:Content>