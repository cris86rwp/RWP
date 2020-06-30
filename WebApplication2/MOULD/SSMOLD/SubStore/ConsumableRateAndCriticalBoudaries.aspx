<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ConsumableRateAndCriticalBoudaries.aspx.vb" Inherits="WebApplication2.ConsumableRateAndCriticalBoudaries" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8" />
 <meta name="viewport" content="width=device-width, initial-scale=1"/>
  
 <link href="Content/bootstrap.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.0.0.min.js"></script>
    <script src="Scripts/esm/popper.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
         <div style="text-align:center">
        <div class="container">
        <h1 class="heading">Consumable rate and Critical Boundary
            </h1>
            </div>
            </div>
        <br />
        <br />
        <div class="container">
<div class="row">
    <div class="col"> Material type:
     
                                  <b> <asp:RadioButton ID="Stock" runat="server" GroupName="Cri_item" Text="Stock" Style="margin-left:100px" />
        <asp:RadioButton ID="NonStock" runat="server" GroupName="Cri_item" Text="Non-Stock" Style="margin-left:150px" />
        <asp:RadioButton ID="Others" runat="server" GroupName="Cri_item" Text="Others" Style="margin-left:210px" /></b>
    </div>
    </div>
            </div>
        <br />
        <br />
        <br />
 <div class="container-fluid">
        <div class="row">
    <div class="col" >
         <asp:Label ID="ID" runat="server" Text="Item desc" Style="margin-left:120px"></asp:Label>
                
                        <asp:TextBox ID="Itemdesc" runat="server" TextMode="MultiLine"></asp:TextBox>
                                                
                            <asp:Label ID="conr" runat="server" Text="Consumption rate" Style="margin-left:210px"></asp:Label>
                            <asp:TextBox ID="ConRate" runat="server" TextMode="MultiLine" ></asp:TextBox>
                        
                       
                            <asp:Label ID="PerUnit1" runat="server" Text="Per Unit" Style="margin-left:250px" ></asp:Label>
                <asp:DropDownList ID="Perunit" runat="server">
                    <asp:ListItem>PW</asp:ListItem>
                    <asp:ListItem>PH</asp:ListItem>
                    <asp:ListItem>PY</asp:ListItem>
                </asp:DropDownList>
                <br />
</div>
    </div>
            </div>
        <br />
        <br />
        <br />
        <div class="container">
          <div class="row">
    <div class="col">
   <asp:Label ID="L" runat="server" Text="Critical Items if less than Heats"></asp:Label>
               
                <asp:TextBox ID="CritItem" runat="server"  Style="margin-left:120px"></asp:TextBox>
               <asp:Label ID="h" runat="server" Text="Heats"></asp:Label>
               
        </div>
                    </div>
            </div>
        <br />
        <br />
        <br />
        <div class="container">
        <div class="row">
    <div class="col">
          <asp:Label ID="Label1" runat="server" Text="No of Heat Cast" Style="margin-left:10px"></asp:Label>
                 
                            <asp:Label ID="Label2" runat="server" Text="Month" Style="margin-left:120px"></asp:Label>
                <asp:DropDownList ID="HMonth" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                            
                 <asp:Label ID="Label3" runat="server" Text="Year" Style="margin-left:210px"></asp:Label>
                        <asp:TextBox ID="HHeat" runat="server" Width="42px" placeholder="YYYY"></asp:TextBox>
                

                        
                            <asp:Label ID="Label4" runat="server" Text="Heat Count" Style="margin-left:320px"></asp:Label>
                <asp:TextBox ID="HCount" runat="server" Width="49px" placeholder="NNNN"></asp:TextBox>
                    
        </div>
            </div>

        </div>
            
        <br />
        <br />
        <br />

            <div class="container">
                <div class="row">
    <div class="col">
          <asp:Label ID="NoW" runat="server" Text="No of Wheel Cast" Style="margin-left:10px"></asp:Label>
                 
                            <asp:Label ID="mon" runat="server" Text="Month" Style="margin-left:120px"></asp:Label>
                <asp:DropDownList ID="WMonth" runat="server">
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                    <asp:ListItem>6</asp:ListItem>
                    <asp:ListItem>7</asp:ListItem>
                    <asp:ListItem>8</asp:ListItem>
                    <asp:ListItem>9</asp:ListItem>
                    <asp:ListItem>10</asp:ListItem>
                    <asp:ListItem>11</asp:ListItem>
                    <asp:ListItem>12</asp:ListItem>
                </asp:DropDownList>
                            
                 <asp:Label ID="Year" runat="server" Text="Year" Style="margin-left:210px"></asp:Label>
                <asp:TextBox ID="WYear" runat="server" Width="42px" placeholder="YYYY"></asp:TextBox>
                        
                            <asp:Label ID="WC" runat="server" Text="Heat Count" Style="margin-left:320px"></asp:Label>
                <asp:TextBox ID="WCount" runat="server" Width="49px" placeholder="NNNN"></asp:TextBox>
                    
        </div>
                    </div>
                </div>
   <br />
        <br />
        <div class="row">
    <div class="col">
          <asp:Button ID="Submit1" runat="server" Text="Submit" BackColor="Yellow" BorderStyle="Solid" Style="margin-left:250px" />
          
                <asp:Button ID="Reset" runat="server" Text="RESET" BackColor="Yellow" BorderStyle="Solid" Style="margin-left:420px" />


       </div>

        </div>        
        <div>
        </div>
    </form>
</body>
</html>
