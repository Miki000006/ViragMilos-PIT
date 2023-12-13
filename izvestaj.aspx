<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="izvestaj.aspx.cs" Inherits="ViragMilos.izvestaj" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Izvestaj</h1>
            <%@ PreviousPageType VirtualPath="~/prijava.aspx" %>
            <asp:Label ID="labela"
                runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
