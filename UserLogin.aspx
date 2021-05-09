﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="PIATOPICOSTALVEZFINAL.UserLogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class ="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png" />

                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <center>
                               <h3>Login de usuario</h3>
                                </center>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label>Usuario</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="MemberID"></asp:TextBox>
                                </div>
                                 <label>Contraseña</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <center>
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Entrar" OnClick="Button1_Click" />
                                    </center>
                                </div>
                                 <div class="form-group">
                                     <center>

                                     <a href="UserSignup.aspx"><input class="btn btn-info btn-block btn-lg" id="Button2" type="button" value="Registrarse" /></a>
                                     </center>
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
        </div>
    </div>
</asp:Content>
