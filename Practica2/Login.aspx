<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Practica2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login Calculadora</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.googleapis.com"><link rel="preconnect" href="https://fonts.gstatic.com" crossorigin><link href="https://fonts.googleapis.com/css2?family=Lobster&family=Montserrat:wght@300&display=swap" rel="stylesheet">
</head>
<body>
    <section class="vh-100" style="background-color: #9A616D;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col col-xl-10">
                    <div class="card shadow-lg rounded" style="border-radius: 1rem;">
                        <div class="row g-0">
                            <div class="col-md-6 col-lg-5 d-none d-md-block d-flex align-items-center">
                                <h2 style="color:#691C32; font-family:Lobster" class="d-flex justify-content-center">Instituto Politécnico Nacional</h2>
                                <h4 style="color:#691C32; font-family:Lobster" class="d-flex justify-content-center">ESIME ZACATENCO</h4>
                                <img src="Images/logo_ipn.png"
                                    alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
                                <asp:Label ID="lbnamev" runat="server" Text="Martinez Cueto Victor Armando" CssClass="d-flex justify-content-center" Font-Names="Lobster" ForeColor="#691C32"></asp:Label>
                                <asp:Label ID="lbnamej" runat="server" Text="Cortes Rivera Jonathan" CssClass="d-flex justify-content-center" Font-Names="Lobster" ForeColor="#691C32"></asp:Label>
                            </div>
                            <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                <div class="card-body p-4 p-lg-5 text-black">

                                    <form runat="server">

                                        <div class="d-flex align-items-center mb-3 pb-1">
                                            <i class="fas fa-cubes fa-2x me-3" style="color: #ff6219;"></i>
                                            <span style="font-family:Lobster" class="h1 fw-bold mb-0">Calculadora Ancho de Banda Digital</span>
                                        </div>

                                        <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Ingresa a tu Cuenta</h5>

                                        <div class="form-outline mb-4">
                                            <asp:TextBox ID="tbusuario" runat="server" CssClass="form-control form-control-lg" ></asp:TextBox>
                                            <asp:Label ID="lbusuario" runat="server" Text="Usuario o Correo electrónico" CssClass="form-label"></asp:Label>
                                        </div>

                                        <div class="form-outline mb-4">
                                             <asp:TextBox ID="tbcontra" runat="server" CssClass="form-control form-control-lg" TextMode="Password" ></asp:TextBox>
                                            <asp:Label ID="lbcontra" runat="server" Text="Contraseña" CssClass="form-label"></asp:Label>
                                        </div>

                                        <div class="form-outline mb-4">
                                            <asp:Label ID="lbnota" runat="server" Text="" CssClass="form-label" ForeColor="Red"></asp:Label>
                                        </div>

                                        <div class="pt-1 mb-4">
                                            <asp:Button ID="btnIngresa" runat="server" Text="Ingresar" CssClass="btn btn-dark btn-lg btn-block" OnClick="btnIngresa_Click" />
                                        </div>
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>
