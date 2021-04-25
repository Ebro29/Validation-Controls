<%@ Page Language="C#" UnobstructiveValidationMode="None" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidationControlsDemoApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="List" ShowMessageBox="True" ShowSummary="False" />
        First Name
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please provide first name" SetFocusOnError="True" ToolTip="Please provide first name">Required</asp:RequiredFieldValidator>
        <br />
        <br />
        Last Name
        <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please provide last name" SetFocusOnError="True" ToolTip="Please provide last name">Required</asp:RequiredFieldValidator>
    
        <br />
        <br />
        Education<asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem Value="-1">(Select One)</asp:ListItem>
            <asp:ListItem Value="0">Undergraduate</asp:ListItem>
            <asp:ListItem Value="1">Graduate</asp:ListItem>
            <asp:ListItem Value="2">Post Graduate</asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtLastName" ErrorMessage="Please provide Education" InitialValue="-1" SetFocusOnError="True" ToolTip="Please provide Education">Required</asp:RequiredFieldValidator>
    
        <br />
        <br />
        Password<asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please provide password" Display="None" SetFocusOnError="True" ToolTip="Please provide password">Required</asp:RequiredFieldValidator>
        <br />
        <br />
        Confirm Password
        <asp:TextBox ID="txtConfirmPassword" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Password and Confirm password must be same" Display="Dynamic" SetFocusOnError="True">Invalid</asp:CompareValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtFirstName" ErrorMessage="Please provide Confirm password" Display="Dynamic" SetFocusOnError="True">Required</asp:RequiredFieldValidator>
        <br />
        <br />
        Age<asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Age must be between 18 and 50" MaximumValue="50" MinimumValue="18" Type="Integer"></asp:RangeValidator>
        <br />
        <br />
        Annual Earnings <asp:TextBox ID="txtAnnualEarnings" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="CompareValidator3" runat="server" ErrorMessage="Please enter valid Annual Earnings" Operator="DataTypeCheck" Type="Currency">Invalid Value</asp:CompareValidator>
        <br />
        <br />
        Date of Graduation<asp:TextBox ID="txtDateOfGraduation" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cvDateOfGraduation" runat="server" ControlToValidate="txtGraduationDate" ErrorMessage="Invalid Date" Operator="LessThan" Type="Date">Invalid Date</asp:CompareValidator>
        <br />
        <br />
    
    </div>
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" />
    </form>
</body>
</html>
