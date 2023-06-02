<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="aspnetValidationControls.RegistrationForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registration Form</h2>

            <label for="NameTextBox">Name: </label>
            <asp:TextBox ID="NameTextBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NameRequiredFieldValidator" runat="server" 
                ControlToValidate="NameTextBox" ErrorMessage="Name is required." 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <label for="AgeTextBox">Age: </label>
            <asp:TextBox ID="AgeTextBox" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="AgeRangeValidator" runat="server" 
                ControlToValidate="AgeTextBox" MinimumValue="18" MaximumValue="65" 
                ErrorMessage="Age must be between 18 and 65." 
                ForeColor="Red"></asp:RangeValidator>
            <br />

            <label for="EmailTextBox">Email: </label>
            <asp:TextBox ID="EmailTextBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="EmailRegularExpressionValidator" runat="server" 
                ControlToValidate="EmailTextBox" 
                ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" 
                ErrorMessage="Invalid email address." 
                ForeColor="Red"></asp:RegularExpressionValidator>
            <br />

            <label for="PasswordTextBox">Password: </label>
            <asp:TextBox ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="PasswordRequiredFieldValidator" runat="server" 
                ControlToValidate="PasswordTextBox" ErrorMessage="Password is required." 
                ForeColor="Red"></asp:RequiredFieldValidator>
            <br />

            <label for="ConfirmPasswordTextBox">Confirm Password: </label>
            <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
            <asp:CompareValidator ID="ConfirmPasswordCompareValidator" runat="server" 
                ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" 
                ErrorMessage="Passwords do not match." 
                ForeColor="Red"></asp:CompareValidator>
            <br />

            <label for="FavoriteNumberTextBox">Favorite Number (must be even): </label>
            <asp:TextBox ID="FavoriteNumberTextBox" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="FavoriteNumberCustomValidator" runat="server"
                ControlToValidate="FavoriteNumberTextBox" OnServerValidate="FavoriteNumberCustomValidator_ServerValidate"
                ErrorMessage="Number must be even." 
                ForeColor="Red"></asp:CustomValidator>
            <br />

            <asp:ValidationSummary ID="RegistrationValidationSummary" runat="server"
                HeaderText="Please correct the following errors:"
                ForeColor="Red" />
            <br />

            <asp:Button ID="SubmitButton" runat="server" Text="Submit" OnClick="SubmitButton_Click" />
        </div>
    </form>
</body>
</html>
