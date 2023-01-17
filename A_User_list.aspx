<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="A_User_list.aspx.cs" Inherits="MedilapFinal.A_User_list" %>

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

    <center><h3>User List</h3></center>
    <br />

    <div class="row no-gutters">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MediLapConnectionString %>" SelectCommand="SELECT * FROM [MemberInfo]"></asp:SqlDataSource>
        <div class="col-lg-12">
            <asp:GridView ID="GridView1" runat="server" Class="table table-striped table-bordered" AutoGenerateColumns="False" DataKeyNames="M_uid" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="M_uid" HeaderText="User ID" ReadOnly="True" SortExpression="M_uid" />
                    <asp:BoundField DataField="M_name" HeaderText="Name" SortExpression="M_name" />
                    <asp:BoundField DataField="M_cn" HeaderText="Contact" SortExpression="M_cn" />
                    <asp:BoundField DataField="M_state" HeaderText="State" SortExpression="M_state" />
                    <asp:BoundField DataField="M_city" HeaderText="City" SortExpression="M_city" />
                    <asp:BoundField DataField="M_pc" HeaderText="Pincode" SortExpression="M_pc" />
                    <asp:BoundField DataField="ac_stat" HeaderText="Status" SortExpression="ac_stat" />
                </Columns>
            </asp:GridView>
        </div>
    </div>

</asp:Content>
