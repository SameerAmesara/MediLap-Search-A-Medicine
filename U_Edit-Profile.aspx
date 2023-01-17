<%@ Page Title="" Language="C#" MasterPageFile="~/User.Master" AutoEventWireup="true" CodeBehind="U_Edit-Profile.aspx.cs" Inherits="MedilapFinal.U_Edit_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center><h3>Edit Profile</h3></center>
    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Full Name"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" TextMode="Date"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Contact Number" TextMode="Phone"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-6">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email ID" TextMode="Email"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                    <asp:ListItem Text="State" Value="State" />
                    <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh" />
                    <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh" />
                    <asp:ListItem Text="Assam" Value="Assam" />
                    <asp:ListItem Text="Bihar" Value="Bihar" />
                    <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh" />
                    <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                    <asp:ListItem Text="Goa" Value="Goa" />
                    <asp:ListItem Text="Gujarat" Value="Gujarat" />
                    <asp:ListItem Text="Haryana" Value="Haryana" />
                    <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh" />
                    <asp:ListItem Text="Jammu and Kashmir" Value="Jammu and Kashmir" />
                    <asp:ListItem Text="Jharkhand" Value="Jharkhand" />
                    <asp:ListItem Text="Karnataka" Value="Karnataka" />
                    <asp:ListItem Text="Kerala" Value="Kerala" />
                    <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh" />
                    <asp:ListItem Text="Maharashtra" Value="Maharashtra" />
                    <asp:ListItem Text="Manipur" Value="Manipur" />
                    <asp:ListItem Text="Meghalaya" Value="Meghalaya" />
                    <asp:ListItem Text="Mizoram" Value="Mizoram" />
                    <asp:ListItem Text="Nagaland" Value="Nagaland" />
                    <asp:ListItem Text="Odisha" Value="Odisha" />
                    <asp:ListItem Text="Punjab" Value="Punjab" />
                    <asp:ListItem Text="Rajasthan" Value="Rajasthan" />
                    <asp:ListItem Text="Sikkim" Value="Sikkim" />
                    <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu" />
                    <asp:ListItem Text="Telangana" Value="Telangana" />
                    <asp:ListItem Text="Tripura" Value="Tripura" />
                    <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh" />
                    <asp:ListItem Text="Uttarakhand" Value="Uttarakhand" />
                    <asp:ListItem Text="West Bengal" Value="West Bengal" />
                </asp:DropDownList>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox class="form-control" ID="TextBox5" runat="server" placeholder="City"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox class="form-control" ID="TextBox6" runat="server" placeholder="Pincode"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-12">
            <div class="input-box mt-10">
                <asp:TextBox CssClass="form-control" ID="TextBox7" runat="server" placeholder="Full Address" TextMode="MultiLine" Rows="2"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-12">
            <center><h4>Login Credentials</h4></center>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="User ID" ReadOnly="True"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox class="form-control" ID="TextBox9" runat="server" placeholder="Password" ReadOnly="True"></asp:TextBox>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="input-box mt-10">
                <asp:TextBox class="form-control" ID="TextBox10" runat="server" placeholder="New Password"></asp:TextBox>
            </div>
        </div>
    </div>

    <br />

    <div class="row no-gutters">
        <div class="col-lg-12">
            <asp:LinkButton class="main-btn btn-block btn-lg" ID="LinkButton1" runat="server" Font-Size="X-Large" OnClick="LinkButton1_Click">Update Profile</asp:LinkButton>
        </div>
    </div>

</asp:Content>
