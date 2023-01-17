<%@ Page Title="" Language="C#" MasterPageFile="~/Store.Master" AutoEventWireup="true" CodeBehind="S_UpdateStock.aspx.cs" Inherits="MedilapFinal.S_UpdateStock" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <center><h3>Update Stock</h3></center>
    <br />

    <div class="row no-gutters">
        <div class="col-lg-5">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Medicine ID"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="input-box mt-10">
                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" runat="server" OnClick="LinkButton1_Click" Width="58px"><span style="font-size:1.5em;"><i class="far fa-search"></i></span></asp:LinkButton>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Medicine Name" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Manufactured By" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" ReadOnly="true">
                    <asp:ListItem Text="Medicine Type" Value="Medicine Type" />
                    <asp:ListItem Text="Tablet" Value="Tablet" />
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
                <asp:TextBox class="form-control" ID="TextBox4" runat="server" placeholder="Expiry Date" TextMode="Date"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="Quantity"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-12">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Description" TextMode="MultiLine" Rows="2" ReadOnly="true"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-5">
            <asp:LinkButton class="main-btn btn-block btn-lg" ID="LinkButton2" runat="server" Font-Size="X-Large" OnClick="LinkButton2_Click">Update</asp:LinkButton>
        </div>
        <div class="col-lg-2">
        </div>
        <div class="col-lg-5">
            <asp:LinkButton class="main-btn btn-block btn-lg" ID="LinkButton3" runat="server" Font-Size="X-Large" OnClick="LinkButton3_Click">Delete</asp:LinkButton>
        </div>
    </div>

</asp:Content>
