<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AgregarReporteUsuario.aspx.cs" Inherits="PIATOPICOSTALVEZFINAL.AgregarReporteUsuario" %>
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
                                <img width="150px" src="imgs/noun_pages_2041111.png" />
                               <h4>Registro de nuevo reporte</h4>
                                </center>
                            </div>

                            </div>
                             <div class="row">
                            <div class="col-md-6">
                                  <label>Detalles</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" TextMode="Multiline" Rows="3" runat="server" placeholder="Detalles" Width="362px"></asp:TextBox>
                                </div>
                                <label>Usuario</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Ingrese su usuario" Width="362px"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <br>
                                    <asp:Button class="btn btn-success btn-block btn-lg" ID="Button1" runat="server" Text="Guardar" OnClick="Button1_Click" />
                                </div>     
                            </div>
                        </div>                  
                    <a href="homepage.aspx">Regresar a la pagina principal</a>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
