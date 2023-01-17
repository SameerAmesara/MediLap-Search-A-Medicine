<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="MapMedicine.aspx.cs" Inherits="MedilapFinal.MapMedicine" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&libraries=places&key=AIzaSyALUN_kMdD0YFtiV1iJZfMUWMfgoT-FXdA"></script>
    <link href="assets/css/MapStyleSheet.css" rel="stylesheet" />

    <script>  
        var mapcode;
        var diag;
        function initialize() {
            mapcode = new google.maps.Geocoder();
            var lnt = new google.maps.LatLng(26.45, 82.85);
            var diagChoice = {
                zoom: 15,
                center: lnt,
                diagId: google.maps.MapTypeId.ROADMAP
            }
            diag = new google.maps.Map(document.getElementById('map_populate'), diagChoice);
        }


        function getmap() {
            var completeaddress = document.getElementById('txt_location').value;
            mapcode.geocode({ 'address': completeaddress }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {
                    diag.setCenter(results[0].geometry.location);
                    var hint = new google.maps.Marker({
                        diag: diag,
                        position: results[0].geometry.location
                    });
                    hint.setMap(diag);
                } else {
                    alert('Location Not Tracked. ' + status);
                }
            });
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Breadcrumb-->
    <div class="page-title-area2">
        <div class="section__bg"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="page-title-content2 text-center">
                        <h3 class="title">Medicine Store Info</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Breadcrumb-->
    <section class="contact-us-area contact-us-page">
        <div class="container-fluid">
            <div class="row">
                <!--Menu-->
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                              <h4>Medicine Store Info</h4>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label1" CssClass="form-control" Text="Medical Store Name" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label2" CssClass="form-control" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label3" CssClass="form-control" Text="Contact" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label4" CssClass="form-control" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label5" CssClass="form-control"  Text="Email" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label6" CssClass="form-control" style="font-size:13px" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label7" CssClass="form-control" Text="City" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label8" CssClass="form-control" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">
                                    <center>
                              <h4>Medicine Info</h4>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label9"  CssClass="form-control" Text="Medicine Name" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label10" CssClass="form-control"  runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label11"  CssClass="form-control" Text="Manufactured By" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label12" CssClass="form-control" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label13" CssClass="form-control" Text="Type" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label14"  CssClass="form-control" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label15" CssClass="form-control" Text="Expiry Date" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                                <div class="col-lg-6">
                                    <center>
                              <div class="input-box mt-10">
                                 <asp:Label ID="Label16" CssClass="form-control" runat="server"></asp:Label>
                              </div>
                           </center>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Menu-->
                <!--Display Content-->
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col">

                                    <h4>Location of Medical Store</h4>

                                </div>
                            </div>

                            <div class="row">
                                <div class="col-lg-9">
                                    <center>
                              <div class="input-box mt-10">
                                 <input id="txt_location" runat="server" ClientIDMode="Static" class="form-control" type="text" > 
                              </div>
                           </center>
                                </div>

                                <div class="col-lg-3">

                                    <div class="form-group">
                                        <input type="button" class="main-btn btn-block " value="Go To Store" onclick="getmap()">
                                    </div>

                                </div>
                            </div>
                            <div class="row">
                                <div class="col">

                                    <div class="form-group">
                                        <div id="map_populate"></div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Display Content-->

            </div>
        </div>
    </section>

</asp:Content>
