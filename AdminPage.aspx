<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="PIATOPICOSTALVEZFINAL.AdminPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid">
      <div class="row">
         <div class="col-md-5">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Reportes</h4>
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <center>
                            <img width="100px" src="imgs/noun_admin_95188.png" />
                        </center>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col">
                        <hr>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-md-3">
                        <label>idTicket</label>
                        <div class="form-group">
                           <div class="input-group">
                              <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="id de ticket"></asp:TextBox>
                               <asp:Button class="btn btn-primary" ID="Button1" runat="server" Text="Llenar" OnClick="Button1_Click" />
                           </div>
                        </div>
                     </div>
                     <div class="col-md-9">
                        <label>Detalles del problema</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Detalles" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                  </div>               
                  <div class="row">
                     <div class="col-md-4">
                        <label>Solucion</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox9" runat="server" placeholder="Solucion propuesta" TextMode="MultiLine"></asp:TextBox>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Estado</label>
                        <div class="form-group">
                           <asp:DropDownList class="form-control" ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                              <asp:ListItem Text="Resuelto" Value=1 />
                              <asp:ListItem Text="En proceso" Value=2 />
                              <asp:ListItem Text="En revision adicional" Value=2 />
                           </asp:DropDownList>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <label>Usuario</label>
                        <div class="form-group">
                           <asp:TextBox CssClass="form-control" ID="TextBox11" runat="server" placeholder="id del Usuario" ReadOnly="True"></asp:TextBox>
                        </div>
                     </div>
                  </div>                                
                  <div class="row">
                     <div class="col-4">
                         <br />
                        <asp:Button ID="Button3" class="btn btn-lg btn-block btn-warning" runat="server" Text="Actualizar reporte" OnClick="Button3_Click" />
                     </div>
                     <div class="col-4">
                         <br />
                        <asp:Button ID="Button2" class="btn btn-lg btn-block btn-danger" runat="server" Text="Eliminar reporte" OnClick="Button2_Click" />
                     </div>
                  </div>
               </div>
            </div>
            <a href="homepage.aspx"><< Back to Home</a><br>
            <br>
         </div>
         <div class="col-md-7">
            <div class="card">
               <div class="card-body">
                  <div class="row">
                     <div class="col">
                        <center>
                           <h4>Lista de reportes</h4>
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
                        <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</asp:Content>
