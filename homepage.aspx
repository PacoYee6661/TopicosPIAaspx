<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="PIATOPICOSTALVEZFINAL.homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <img src="imgs/home-bg.png" class="img-fluid" />
    </section>
    <section>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <center>
                <h2>Nuestros Servicios</h2>
                <p><b>Mesa de servicio</b></p>
                </center>
            </div>
        </div>
         <div class="row">
            <div class="col-md-6">
                <center>
                <img width="150px" src="imgs/helpdesk.png" />
                <h4>Servicio de mesa de ayuda</h4>
                <p>En esta pagina web usted podra levantar reportes acerca de un pedido de pizza
                    el cual se solucionara por un ejecutivo en la brevedad
                </p>
                </center>
            </div>
            <div class="col-md-6">
                <center>
                <img width="150px" src="imgs/workinprogress.png" />
                <h4>Servicio en construccion</h4>
                <p>Lo sentimos por las molestias esta funcionalidad esta en progreso
                </p>
                </center>
            </div>
        </div>
    </div>
    </section>
    <section>
        <img src="imgs/in-homepage-banner.png" class="img-fluid" />
    </section>
</asp:Content>
