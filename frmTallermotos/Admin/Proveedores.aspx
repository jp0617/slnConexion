<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Proveedores.aspx.cs" Inherits="prjtallermotos.Admin.Proveedores" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link href="../css/styleAdmin.css" rel="stylesheet" />
    <title>Proveedores</title>
</head>
<body>
    <form id="form1" runat="server">
        <!-- The sidebar -->
        <div class="sidebar">
            <a href="../frmadmin.aspx"><i class="fa fa-home fa-2x"></i>Home</a>
            <a href="Empleado.aspx"><i class="fa fa-fw fa-user"></i>Empleados</a>
            <a href="Proveedores.aspx"><i class="fa fa-fw fa-user"></i>Proveedores</a>
            <a href="Repuestos.aspx"><i class="fa fa-fw fa-wrench"></i>Repuestos</a>
            <a href="Vehiculos.aspx"><i class="fa fa-fw fa-wrench"></i>Vehículos</a>
            <a href="Clientes.aspx"><i class="fa fa-fw fa-user"></i>Clientes</a>
            <a href="Mantenimiento.aspx"><i class="fa fa-fw fa-wrench"></i>Mantenimiento</a>                     
            <a href="Detalles.aspx"><i class="fa fa-fw fa-envelope"></i>Facturación</a>            
            <asp:ImageButton runat="server" ID="logout_new" ImageUrl="~/img/image_icon_logout_pic_512x512.png"  style="margin-top:95%" OnClick="logout_new_Click"/>
        </div>
        <div class="Centrar-Medio">
            <h1>Proveedores</h1>
        </div>
        <br />  
              <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">ID compañía</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtIdProv" class="form-control" aria-label="txtIdProv" aria-describedby="basic-addon1" />
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Nombre de compañía</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtNomCompania" class="form-control" aria-label="NomCompania" aria-describedby="basic-addon1" />
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Nombre de contacto</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtNomContac" class="form-control" aria-label="NomContac" aria-describedby="basic-addon1" />
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Título del contacto</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtTitulo" class="form-control" aria-label="Titulo" aria-describedby="basic-addon1" />
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Número de contacto</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtNumContact" class="form-control" aria-label="NumContact" aria-describedby="basic-addon1" />
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Dirección</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtDireccionProv" class="form-control" aria-label="DireccionProv" aria-describedby="basic-addon1" />
            </div>
        </div>
        <br />
        <div class="Centrar-Medio">
            <asp:Button runat="server" ID="btnInsertarProv" CssClass="btn btn-info" Text="Insertar" OnClick="btnInsertarProv_Click"/>
            <asp:Button runat="server" ID="btnActualizarProv" CssClass="btn btn-info" Enabled = "false" Text="Actualizar" OnClick="btnActualizarProv_Click" />
            <asp:Button runat="server" ID="btnLimpiar" CssClass="btn btn-info" Text="Limpiar" OnClick="btnLimpiar_Click" />
        </div>
        <br />
        <h5 class="Centrar-Medio">Si desea actualizar un proveedor debe seleccionar la compañía</h5>
        <br />
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Compañía</span>
                </div>
            <asp:DropDownList ID="drpIdProv" AutoPostBack="true" CssClass="text-center form-control list-group-horizontal list-group-item-action size" runat="server" OnSelectedIndexChanged="drpIdProv_SelectedIndexChanged">                
            </asp:DropDownList>
                </div>
        </div>
        <br />
        <asp:Panel runat="server" Visible="true" ID="pnlProv" CssClass="Centrar-Medio">
            <asp:GridView runat="server" ID="gvProv">
            </asp:GridView>
        </asp:Panel>
        <img src="../img/imageedit_3_5509983854.png" class="logPosicionGen" />
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.11/dist/sweetalert2.all.min.js"></script>
        <script src="../js/sweetalert.js" type="text/javascript"></script>
    </form>
</body>
</html>
