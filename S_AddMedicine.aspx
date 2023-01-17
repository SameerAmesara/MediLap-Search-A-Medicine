<%@ Page Title="" Language="C#" MasterPageFile="~/Store.Master" AutoEventWireup="true" CodeBehind="S_AddMedicine.aspx.cs" Inherits="MedilapFinal.S_AddMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <center><h3>Add Medicine</h3></center>
    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Medicine ID"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Medicine Name"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server" placeholder="Manufactured By"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:DropDownList ID="DropDownList2" CssClass="form-control" runat="server">
                    <asp:ListItem Text="Select" Value="select" />
                    <asp:ListItem Text="Tablets" Value="Tablets" />
                    <asp:ListItem Text="Capsule" Value="Capsule" />
                    <asp:ListItem Text="Syrup" Value="Syrup" />
                    <asp:ListItem Text="Lotion" Value="Lotion" />
                    <asp:ListItem Text="Cream" Value="Cream" />
                    <asp:ListItem Text="Gel" Value="Gel" />
                </asp:DropDownList>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" placeholder="Quantity"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-12">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" placeholder="Description" TextMode="MultiLine" Rows="3"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col">
            <div class="form-group">
                <asp:Button class="main-btn btn-lg" ID="Button2" runat="server" Text="Add Medicine" OnClick="Button4_Click" Font-Size="X-Large" />
            </div>
        </div>
    </div>

</asp:Content>
