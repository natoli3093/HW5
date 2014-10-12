<%@ Page Language="VB" AutoEventWireup="false" CodeFile="default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <h1>Kyle's Mortgage Calculator</h1>
        <link rel="stylesheet" type="text/css" href="./style.css" />
        
        <br /><br />
     
        Loan Amount:<asp:TextBox ID="tbLoanAmt" runat="server" ></asp:TextBox>
                  
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbLoanAmt" ErrorMessage="Please Input a Loan Amount!!"></asp:RequiredFieldValidator>
                  
        <br /><br />      
        
        Annual Interest %: <asp:TextBox ID="tbAnnualInterest" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbAnnualInterest" ErrorMessage="Please enter an Interest Rate!!"></asp:RequiredFieldValidator>
        
        <br /><br />

        Loan Term (Yrs): <asp:TextBox ID="tbLoanTerm" runat="server" ></asp:TextBox>
        
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbLoanTerm" ErrorMessage="Please enter a term for your loan!!"></asp:RequiredFieldValidator>
        
        <br /><br />

        <asp:Button ID="btnCalcPmt" runat="server" Text="Calculate" />

        <br />
        <br />

        <asp:Button ID="clear" runat="server" Text="Clear" />

        <% If Not IsPostBack Then%>
        
        <p>Welcome to my mortgage calculator. Please complete the fields above to have your monthly payment and loan repayment schedule 
            calculated for you</p>
        <% Else%>
        
        <br />    
                
        Monthly Payment: &nbsp; <asp:Label ID="lblMonthlyPmt" runat="server" CssClass="bold"></asp:Label>
        
        <br />
        <br />
        
        <asp:GridView ID="loanGridView" runat="server" CssClass="cssgridview" AlternatingRowStyle-CssClass="alt" />
        
     


        <%End If%>
            
        </div>
    </form>
</body>
</html>
