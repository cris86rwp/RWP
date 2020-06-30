<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="MaterialTransactionDetails.aspx.vb" Inherits="WebApplication2.MaterialTransactionDetails" %>

<!DOCTYPE html>
<link href="Content/bootstrap.css" rel="stylesheet" />
<html>
<head runat="server">
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel_Mtd" runat="server" Height="476px">
                 <div style="text-align:center">
        <div class="container">
        <h1 class="heading">Material Transaction Details
            </h1>
            </div>
            </div>
        <br />
        <br />
<div class="row">
    <div class="col"> Material type:&nbsp;&nbsp;
       
                                  <b> <asp:RadioButton ID="Stock" runat="server" GroupName="Cri_item" Text="Stock" Style="margin-left:100px" />
        <asp:RadioButton ID="NonStock" runat="server" GroupName="Cri_item" Text="Non-Stock" Style="margin-left:150px" />
        <asp:RadioButton ID="Others" runat="server" GroupName="Cri_item" Text="Others" Style="margin-left:210px" /></b>
    
          
             </div>
    </div>
        <br />
        <br />
        <br />
 
        <div class="row">
    <div class="col" >
                    Item Desc<asp:TextBox ID="ItemDesc" runat="server" Width="99px"></asp:TextBox>
             PL No<asp:TextBox ID="PLNo" runat="server" Width="73px"></asp:TextBox>
            Withdraw Date<asp:TextBox ID="WithDate" runat="server" Width="95px" placeholder="yyyy-mm-dd"></asp:TextBox>
            Withdraw Qty<asp:TextBox ID="WithQty" runat="server" Width="75px"></asp:TextBox>
             Unit<asp:TextBox ID="Unit1" runat="server" Width="50px"></asp:TextBox>
             PO No.<asp:TextBox ID="PONo" runat="server" Width="62px"></asp:TextBox>
             PO Date<asp:TextBox ID="PODate" runat="server" Width="95px" placeholder="yyyy-mm-dd"></asp:TextBox>
            PO Qty<asp:TextBox ID="POQty" runat="server" Width="94px"></asp:TextBox>
             Firm name<asp:TextBox ID="FirmName" runat="server" Width="100px"></asp:TextBox>
    </div>
            </div>
        <br />
        <br />
        <br />
          <div class="row">
    <div class="col">
          <br />
            Supply Qty<asp:TextBox ID="SupQty" runat="server" Width="84px"></asp:TextBox>
            PO Wise Store Balance Qty<asp:TextBox ID="POBalQty" runat="server" Width="79px"></asp:TextBox>
            Consumption City<asp:TextBox ID="POConCity" runat="server" Width="93px"></asp:TextBox>
            Main store Bal Qty<asp:TextBox ID="MBalQty" runat="server" Width="78px"></asp:TextBox>
            Shop Bal Qty<asp:TextBox ID="SBalQty" runat="server" Width="86px"></asp:TextBox>
            Total Bal Qty<asp:TextBox ID="TBalQty" runat="server" Width="104px"></asp:TextBox>
               
        </div>
                    </div>
        <br />
        <br />
        <br />
        <div class="row">
    <div class="col">
         Material Drawn Through
            <asp:DropDownList ID="MatDrawn" runat="server">
                <asp:ListItem>S1313</asp:ListItem>
                <asp:ListItem>RMR</asp:ListItem>
                <asp:ListItem>Work Order</asp:ListItem>
                <asp:ListItem>CB</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
    
            
        
            
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No.<asp:TextBox ID="No1" runat="server" Width="73px"></asp:TextBox> 
         </div>
    </div>
                <br />
                <br />
                
                  <asp:Button ID="Submit1" runat="server" Text="Submit" BackColor="Yellow" BorderStyle="Solid" Style="margin-left:250px" />
          
                <asp:Button ID="Reset" runat="server" Text="RESET" BackColor="Yellow" BorderStyle="Solid" Style="margin-left:420px" />
        <br />
        <br />
        <br />

                
            </asp:Panel>
        </div>
    </form>
</body>
</html>
