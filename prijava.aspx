<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="prijava.aspx.cs" Inherits="ViragMilos.prijava" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Prijava za sajt</h1>
            Prezime i Ime:
            <asp:TextBox ID="txtPrezimeIme"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtPrezimeImeValidator"
                ErrorMessage="Prezime i ime  je obavezno!"
                ControlToValidate="txtPrezimeIme"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />
            Email:
            <asp:TextBox ID="txtEmail"
                runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="txtEmailValidator"
                ErrorMessage="Email je obavezan!"
                ControlToValidate="txtEmail"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="txtEmailExpressionValidator"
                ErrorMessage="Email nije u ispravnom formatu"
                ControlToValidate="txtEmail"               
            ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"

                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RegularExpressionValidator>
            <br />
            Potvrda Email-a:
            <asp:TextBox ID="txtPotvrda"
                runat="server"></asp:TextBox>
             <asp:RequiredFieldValidator ID="txtPotvrdaValidator"
                ErrorMessage="Potvrda je obavezna!"
                ControlToValidate="txtPotvrda"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
               <asp:CompareValidator   ID="PoredjenjeValidator"
                ErrorMessage="Mejlovi  se ne poklapaju"
                ControlToCompare="txtEmail"
                ControlToValidate="txtPotvrda"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server" ></asp:CompareValidator>
            <br />
            Godiste:
            <asp:TextBox ID="txtGodiste"
                ValidationGroup="Group1"
                runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="txtGodisteValidator"
                ErrorMessage="Unesite godiste!"
                ControlToValidate="txtPotvrda"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
              <asp:RangeValidator ID="txtGodisteOpsegValidator"
                ErrorMessage="Nedozvoljen godiste!"
                ControlToValidate="txtGodiste"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                MinimumValue="2003"
                MaximumValue="2010"
                Type="Integer"
                runat="server"></asp:RangeValidator>
            <br />
            Razred:
            <asp:RadioButtonList ID="rblPol"
                runat="server">
                <asp:ListItem Text="I"
                    Value="1"></asp:ListItem>
                <asp:ListItem Text="II"
                    Value="2"></asp:ListItem>
                <asp:ListItem Text="III"
                    Value="3"></asp:ListItem>
                 <asp:ListItem Text="IV"
                    Value="4"></asp:ListItem>
                </asp:RadioButtonList>
             <asp:RequiredFieldValidator ID="rblPolValidator"
                ErrorMessage="Unesite godiste!"
                ControlToValidate="txtPotvrda"
                Display="Static"
                ForeColor="Red"
                SetFocusOnError="True"
                ValidationGroup="Group1"
                EnableClientScript="False"
                runat="server"></asp:RequiredFieldValidator>
            <br />
            <asp:Button ID="btnPrijava"
                 ValidationGroup="Group1"
                CausesValidation="true"
                OnClick="btnSubmit_Click"
                Text="Prijavi se"
                runat="server"/>
            <br />
            <asp:Label ID="lblPoruka"
                runat="server"></asp:Label>



            



 

        </div>
    </form>
</body>
</html>
