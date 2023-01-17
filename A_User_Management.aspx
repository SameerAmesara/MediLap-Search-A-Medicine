<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="A_User_Management.aspx.cs" Inherits="MedilapFinal.A_User_Management" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center><h3>User Management</h3></center>
    <br />

    <div class="row no-gutters">
        <div class="col-lg-5">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="User ID" ForeColor="White"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="input-box mt-10">
                <asp:LinkButton ID="LinkButton1" CssClass="btn btn-primary" Width="61px" runat="server" OnClick="LinkButton1_Click"><span style="font-size:1.5em;"><i class="far fa-search"></i></span></asp:LinkButton>
            </div>
        </div>
        <div class="col-lg-3">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox2" CssClass="form-control mr-1" runat="server" ReadOnly="True" placeholder="Status"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="input-box mt-10">
                <asp:LinkButton ID="LinkButton2" CssClass="btn btn-success" Width="61px" runat="server" OnClick="LinkButton2_Click"><span style="font-size:1.5em;"><i class="far fa-check-circle"></i></span></asp:LinkButton>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="input-box mt-10">
                <asp:LinkButton ID="LinkButton3" CssClass="btn btn-warning" Width="61px" runat="server" OnClick="LinkButton3_Click"><span style="font-size:1.5em;"><i class="far fa-pause-circle"></i></span></asp:LinkButton>
            </div>
        </div>
        <div class="col-lg-1">
            <div class="input-box mt-10">
                <asp:LinkButton ID="LinkButton4" CssClass="btn btn-danger" Width="61px" runat="server" OnClick="LinkButton4_Click"><span style="font-size:1.5em;"><i class="far fa-times-circle"></i></span></asp:LinkButton>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server" ReadOnly="true" placeholder="Full Name"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server" ReadOnly="true" TextMode="Date"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox5" CssClass="form-control" runat="server" ReadOnly="true" placeholder="Contact Number" TextMode="Number"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server" ReadOnly="true" placeholder="E-mail ID" TextMode="Email"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox7" CssClass="form-control" runat="server" ReadOnly="true" placeholder="State"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox8" CssClass="form-control" runat="server" ReadOnly="true" placeholder="City"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox9" CssClass="form-control" runat="server" ReadOnly="true" placeholder="Pincode"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-12">
            <div class="input-box mt-10">
                <asp:TextBox ID="TextBox10" CssClass="form-control" runat="server" placeholder="Full Address" ReadOnly="true" TextMode="Multiline" Rows="3"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-12">
            <div class="input-box mt-10">
                <asp:LinkButton ID="LinkButton5" CssClass="main-btn btn-block btn-lg" runat="server" Font-Size="X-Large" OnClick="LinkButton5_Click">Delete Member Permanently</asp:LinkButton>
            </div>
        </div>
    </div>

    <br />

</asp:Content>
