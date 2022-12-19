<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculadora.aspx.cs" Inherits="Practica2.Calculadora" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Calculadora de BWD</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Lobster&family=Montserrat:wght@300&display=swap" rel="stylesheet">
</head>
<body>
    <div class="vh-100 d-flex" style="background-color:#EEECC1">
        <div class="container" style="height: 85vh">
            <div class="row mt-3 mb-3" style="height: 10%">
                <div class="col-12 d-flex justify-content-center">
                    <span style="font-family: Lobster" class="h1 fw-bold pb-3">Calculadora de Ancho de Banda Digital</span>
                </div>
            </div>
            <form runat="server" style="height: 90%" class="">
                <div class="row h-100 shadow-lg rounded">
                    <div class="col-4 card mh-100">
                        <div class="row">
                            <div class="col-12 d-flex justify-content-center">
                                <span style="font-family: Lobster" class="h3 fw-bold mb-0 mt-3">Audio</span>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-12 d-block">
                                <asp:Label ID="Label1" runat="server" Text="No. de bits:" Font-Names="Montserrat"></asp:Label>
                                <asp:DropDownList ID="cbnbits" runat="server" CssClass="d-inline w-auto mt-4 mb-4 form-select" Font-Names="Montserrat">
                                    <asp:ListItem>-- Selecciona un valor --</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:Label ID="Label2" runat="server" Text="Frec. máx:" Font-Names="Montserrat"></asp:Label>
                                <asp:DropDownList ID="cbfrec" runat="server" CssClass="d-inline w-auto mt-4 mb-4 form-select" Font-Names="Montserrat">
                                    <asp:ListItem>-- Selecciona un valor --</asp:ListItem>
                                    <asp:ListItem>4 kHz</asp:ListItem>
                                    <asp:ListItem>8 kHz</asp:ListItem>
                                    <asp:ListItem>18 kHz</asp:ListItem>
                                    <asp:ListItem>22 kHz</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:Label ID="Label3" runat="server" Text="Tasa de Compresión:" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbtca" runat="server" Placeholder="(0 al 99%)" CssClass="mt-4 mb-4 form-control w-50 d-inline" Font-Names="Montserrat"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label5" runat="server" Text="No. canales:" Font-Names="Montserrat"></asp:Label>
                                <asp:DropDownList ID="cbncanales" runat="server"  CssClass="d-inline w-auto mt-4 mb-4 form-select" Font-Names="Montserrat">
                                    <asp:ListItem>-- Selecciona un valor --</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mt-3">
                            <div class="col-12 d-flex justify-content-center">
                                <asp:Button ID="btncalcula" runat="server" Text="Calcular" CssClass="btn btn-dark btn-lg btn-block" OnClick="btncalcula_Click" />
                            </div>
                        </div>
                    </div>
                    <div class="col-4 card mh-100">
                        <div class="row">
                            <div class="col-12 d-flex justify-content-center">
                                <span style="font-family: Lobster" class="h3 fw-bold mb-0 mt-3">Video</span>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-12 d-block">
                                <asp:Label ID="Label4" runat="server" Text="Prof. de color:" Font-Names="Montserrat"></asp:Label>
                                <asp:DropDownList ID="cbprof" runat="server" CssClass="d-inline w-auto mt-4 mb-4 form-select" Font-Names="Montserrat">
                                    <asp:ListItem>-- Selecciona un valor --</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>32</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:Label ID="Label6" runat="server" Text="Resolución:" Font-Names="Montserrat"></asp:Label>
                                <asp:DropDownList ID="cbresol" runat="server" CssClass="d-inline w-auto mt-4 mb-4 form-select" Font-Names="Montserrat">
                                    <asp:ListItem>-- Selecciona un valor --</asp:ListItem>
                                    <asp:ListItem>320 x 240</asp:ListItem>
                                    <asp:ListItem>640 x 480</asp:ListItem>
                                    <asp:ListItem>1 k</asp:ListItem>
                                    <asp:ListItem>2 k</asp:ListItem>
                                    <asp:ListItem>4 k</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:Label ID="Label7" runat="server" Text="Cuadros/seg:" Font-Names="Montserrat"></asp:Label>
                                <asp:DropDownList ID="cbframes" runat="server" CssClass="d-inline w-auto mt-4 mb-4 form-select" Font-Names="Montserrat">
                                    <asp:ListItem>-- Selecciona un valor --</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>60</asp:ListItem>
                                </asp:DropDownList>
                                <br />
                                <asp:Label ID="Label8" runat="server" Text="Tasa de Compresión:" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbtcv" runat="server" Placeholder="(0 al 99%)" CssClass="mt-4 mb-4 form-control w-50 d-inline" Font-Names="Montserrat"></asp:TextBox>
                                <asp:Label ID="Label9" runat="server" Text="Duración:" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbhini" runat="server" Placeholder="Hora Inicial" CssClass="mt-4 mb-4 form-control w-25 d-inline" Font-Names="Montserrat"></asp:TextBox>
                                <asp:TextBox ID="tbhfin" runat="server" Placeholder="Hora final" CssClass="mt-4 mb-4 form-control w-25 d-inline" Font-Names="Montserrat"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                    <div class="col-4 card mh-100">
                        <div class="row">
                            <div class="col-12 d-flex justify-content-center">
                                <span style="font-family: Lobster" class="h3 fw-bold mb-0 mt-3">Resultados</span>
                            </div>
                        </div>
                        <div class="row mt-4">
                            <div class="col-12 d-block">
                                <asp:Label ID="Label10" runat="server" Text="BWaudio =" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbbwa" runat="server" CssClass="mt-4 form-control w-50 d-inline" Font-Names="Montserrat" ReadOnly="true"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label11" runat="server" Text="BWvideo =" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbbwv" runat="server" CssClass="mt-3 form-control w-50 d-inline" Font-Names="Montserrat" ReadOnly="true"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label12" runat="server" Text="BWtotal =" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbbwt" runat="server" CssClass="mt-3 form-control w-50 d-inline" Font-Names="Montserrat" ReadOnly="true"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label13" runat="server" Text="Esp. alm audio =" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbespa" runat="server" CssClass="mt-3 form-control w-50 d-inline" Font-Names="Montserrat" ReadOnly="true"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label14" runat="server" Text="Esp. alm video =" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbespv" runat="server" CssClass="mt-3 form-control w-50 d-inline" Font-Names="Montserrat" ReadOnly="true"></asp:TextBox>
                                <br />
                                <asp:Label ID="Label15" runat="server" Text="Esp. alm total =" Font-Names="Montserrat"></asp:Label>
                                <asp:TextBox ID="tbespt" runat="server" CssClass="mt-3 form-control w-50 d-inline" Font-Names="Montserrat" ReadOnly="true"></asp:TextBox>
                                <br /><br />
                                <asp:Label ID="Label16" runat="server" Text="Ahorro al usar compresión:" Font-Names="Montserrat"></asp:Label>
                                <br />
                                <asp:TextBox ID="tbahorro" runat="server" CssClass="form-control w-50 d-inline" Font-Names="Montserrat" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
