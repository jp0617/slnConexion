<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mantenimiento.aspx.cs" Inherits="prjtallermotos.Admin.Mantenimiento" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
    <link href="../css/styleAdmin.css" rel="stylesheet" />
    <title>Mantenimiento</title>
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
            <h1>Mantenimiento</h1>
        </div>
        <br />
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Placa</span>
                </div>
            <asp:DropDownList ID="drpIdVehiculo" AutoPostBack="true" CssClass="text-center form-control list-group-horizontal list-group-item-action size" runat="server">
            </asp:DropDownList>
                </div>
        </div>
        <br />
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Empleado</span>
                </div>
            <asp:DropDownList ID="drpIdEmpleado" AutoPostBack="true" CssClass="text-center form-control list-group-horizontal list-group-item-action size" runat="server">
            </asp:DropDownList>
                </div>
        </div>
        <br />
        <div class="row justify-content-center" runat="server" id="idman" visible="false">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Id mantenimiento</span>
        </div>
               <input type="text" runat="server" id="txtidmantenimiento" class="form-control" aria-label="Id mantenimiento" aria-describedby="basic-addon1" />
            </div>
        </div>                      
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Diagnóstico</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtDiagnostico" class="form-control" aria-label="Diagnostico" aria-describedby="basic-addon1" />
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Procedimiento realizado</span>
                </div>
                <input type="text" onclick="" runat="server" id="txtProcRealiz" class="form-control" aria-label="ProcRealiz" aria-describedby="basic-addon1" />
            </div>
        </div>
        <div class="Centrar-Medio">
            <asp:Button runat="server" ID="btnInsertarMant" CssClass="btn btn-info" Text="Insertar" OnClick="btnInsertarMant_Click" />
            <asp:Button runat="server" ID="btnActualizarMant" Enabled="false" CssClass="btn btn-info" Text="Actualizar" OnClick="btnActualizarMant_Click" />
            <asp:Button runat="server" ID="btnLimpiar" CssClass="btn btn-info" Text="Limpiar" OnClick="btnLimpiar_Click" />
        </div>
        <br />
        <h5 class="Centrar-Medio">Si desea actualizar el mantenimiento de una moto debe selecionar su placa</h5>
        <br />
        <div class="row justify-content-center">
            <div class="input-group mb-3 Centrar-Medio size">
                <div class="input-group-prepend">
                    <span class="input-group-text">Placa</span>
                </div>
            <asp:DropDownList ID="drpIdMantenim" AutoPostBack="true" CssClass="text-center form-control list-group-horizontal list-group-item-action size Centrar-Medio" runat="server" OnSelectedIndexChanged="drpIdMantenim_SelectedIndexChanged">
            </asp:DropDownList>
                </div>
        </div>
            <br />  
        <div>    
            <asp:Panel runat="server" Visible="true" ID="pnlMantenimiento"  CssClass="Centrar-Medio">
                <asp:GridView runat="server" ID="gvMantenimiento">
                </asp:GridView>
            </asp:Panel>
        </div>
        <img src="../img/imageedit_3_5509983854.png" class="logPosicionMant" />
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.0.11/dist/sweetalert2.all.min.js"></script>
        <script src="../js/sweetalert.js" type="text/javascript"></script>
    </form>
</body>
</html>
