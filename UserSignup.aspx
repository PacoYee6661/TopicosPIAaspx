<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserSignup.aspx.cs" Inherits="PIATOPICOSTALVEZFINAL.UserSignup" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class ="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/generaluser.png" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                               <h4>Registro de nuevo usuario</h4>
                                </center>
                            </div>

                        </div>
                         <div class="row">


                            <div class="col-md-6">
                                  <label>Nombre completo</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="Nombre"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                 <label>Fecha de nacimiento</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="fecha de nacimiento" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>


                        </div>

                        <div class="row">


                            <div class="col-md-6">
                                  <label>Numero de telefono</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" placeholder="Numero"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                 <label>Correo electronico</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" placeholder="Email" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>


                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                               <br />
                                    <span class="badge bg-primary">Credenciales de usuario</span>
                                </center>
                            </div>
                        </div>


                         <div class="row">
                            <div class="col-md-6">
                                  <label>Usuario</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Usuario"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                 <label>Contraseña</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Contraseña"></asp:TextBox>
                                </div>
                            </div>
                              <div class="form-group">
                                     <center>
                                         <br />
                                     <a href="UserSignup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Registrarse" /></a>
                                     </center>
                                </div>
                        </div>
                        <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                               <hr>
                            </div>
                        </div>
                    </div>
                    <a href="homepage.aspx">Regresar a la pagina principal</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
