<%@ Page Title="" Language="C#" MasterPageFile="~/Store.Master" AutoEventWireup="true" CodeBehind="S_MedicineInventory.aspx.cs" Inherits="MedilapFinal.S_MedicineInventory" %>

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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <center><h3>Medicine Inventory</h3></center>
    <br />

    <div class="row no-gutters">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MediLapConnectionString %>" SelectCommand="SELECT [med_id], [med_name], [med_mfg], [med_type], [med_expr], [med_q] FROM [StoreMedicineInfo] WHERE ([MS_uid] = @MS_uid)">
            <SelectParameters>
                <asp:SessionParameter Name="MS_uid" SessionField="username" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <div class="col-lg-12">
            <asp:GridView ID="GridView1" runat="server" Class="table table-striped table-bordered" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="med_id" HeaderText="Medicine ID" SortExpression="med_id" />
                    <asp:BoundField DataField="med_name" HeaderText="Name" SortExpression="med_name" />
                    <asp:BoundField DataField="med_mfg" HeaderText="Mfg. By" SortExpression="med_mfg" />
                    <asp:BoundField DataField="med_type" HeaderText="Type" SortExpression="med_type" />
                    <asp:BoundField DataField="med_expr" HeaderText="Expiry Date" SortExpression="med_expr" />
                    <asp:BoundField DataField="med_q" HeaderText="Quantity" SortExpression="med_q" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>
