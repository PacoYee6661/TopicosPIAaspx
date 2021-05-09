<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PaginaUsuario.aspx.cs" Inherits="PIATOPICOSTALVEZFINAL.PaginaUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">
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
                               <h4>Tu perfil</h4>
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
                                    <asp:TextBox class="form-control" ID="TextBox7" runat="server" placeholder="Usuario" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>
                             <div class="col-md-6">
                                 <label>Contraseña</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" ID="TextBox8" runat="server" placeholder="Contraseña" ReadOnly="True"></asp:TextBox>
                                </div>
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
                     <div class="col-md-7">
                <div class ="card">
                    <div class="card-body">
                            <div class="col">
                                <center>
                                    <img width="100px" src="imgs/books.png" />
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                               <h4>Tus reportes</h4>
                                </center>
                            </div>
                            </div>
                    <div class="row">
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                            </div>
                    </div>
                </div>
        </div>
    </div>
</asp:Content>
