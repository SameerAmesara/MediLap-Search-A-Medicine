<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="A_login.aspx.cs" Inherits="MedilapFinal.A_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <section class="contact-us-area contact-us-page">
      <div class="container">
         <div class="row justify-content-center">
            <div class="col-lg-6">
               <br />
               <br />
               <br />
               <br />
               <br />
               <div class="contact-us-box">
                  <div class="row no-gutters">
                     <div class="col-lg-12">
                        <center>
                           <img width="125px" src="assets/images/user.png" />
                           <h3 class="title">Admin Login</h3>
                        </center>
                     </div>
                  </div>
                  <div class="row no-gutters">
                     <div class="col-lg-12">
                        <div class="input-box mt-10">
                           <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Admin ID" ForeColor="White"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <br />
                  <div class="row no-gutters">
                     <div class="col-lg-12">
                        <div class="input-box mt-10">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </div>
                     </div>
                  </div>
                  <br />
                  <div class="row no-gutters">
                     <div class="col-lg-12">
                        <div class="input-box mt-10">
                           <asp:LinkButton class="main-btn btn-block btn-lg" ID="LinkButton3" Font-size="X-Large" runat="server" OnClick="LinkButton3_Click">Login</asp:LinkButton>
                        </div>
                     </div>
                  </div>
               </div>
               <br />
               <br />
            </div>
         </div>
      </div>
   </section>
</asp:Content>