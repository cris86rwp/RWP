<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Used_Item_Detail_Form.aspx.vb" Inherits="WebApplication2.Used_Item_Detail_Form" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device width,initial scale=1" />
</head>
<body>
   

   <form id="form1" runat="server">
        <div >
             <div class="container-fluid">
          <br />
            <div style="text-align:center;">
            
                 
          <h1 class="heading">
            <asp:Label ID="Heading" runat="server"  Font-Bold="True"  BackColor="Yellow"  Font-Size="X-Large" Text="Used Item Details(Scrap/Disposal)" align="center"></asp:Label>
              </h1>
<br />
            <br />
            <br />
            <br />
               
            
            <div class="row">

               <div class="col" >
                     <asp:Label ID="L_Item_Desc" runat="server" Text="Item Desc" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                        <asp:DropDownList ID="DD1" runat="server" Height="30px" TabIndex="5" Width="120px" >
                            <asp:ListItem>A</asp:ListItem>
                            <asp:ListItem>B</asp:ListItem>
                            <asp:ListItem>C</asp:ListItem>
                            <asp:ListItem>D</asp:ListItem>
                            <asp:ListItem>E</asp:ListItem>
                        </asp:DropDownList>

             </div>

            <div class="col" >
                     <asp:Label ID="L_Pl_No" runat="server" Text="Pl No" Height="30px" TabIndex="5" Width="120px"  ></asp:Label>
                     <asp:TextBox ID="Pl_No" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
            </div>
            
            <div class="col" ">
                     <asp:Label ID="L_Date" runat="server" Text="Date" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                     <asp:TextBox ID="UDate" runat="server" Height="30px" TabIndex="5" Width="120px"  placeholder="YYYY-MM-DD" ></asp:TextBox>
            </div>
                
            <div class="col" ">
                     <asp:Label ID="L_B_Qty" runat="server" Text="Balance Qty" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                     <asp:TextBox ID="B_Qty" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
           </div>
        </div>
                
                <br />
                <br />
                <br />
               

        <div class="row">
             <div class="col" >
                     <asp:Label ID="L_Location" runat="server" Text="Location" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                     <asp:TextBox ID="Location" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
             </div>
           
            <div class="col">
                     <asp:Label ID="L_D_Qty" runat="server" Text="Disposal Qty" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                     <asp:TextBox ID="D_Qty" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
           </div>
           <div class="col">
           
                   <asp:Label ID="L_D_Date" runat="server" Text="Disposal Date" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                   <asp:TextBox ID="D_Date" runat="server" Height="30px" TabIndex="5" Width="120px"   placeholder="YYYY-MM-DD"></asp:TextBox>
           </div>
                   <div class="col">
                         <asp:Label ID="L_PO_Qty" runat="server" Text="PO Qty" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                         <asp:TextBox ID="PO_Qty" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
                  </div>
            </div>     
                <br />
                <br />
                <br />
               
           <div class="row">
                <div class="col">
                     <asp:Label ID="L_Firm_Name" runat="server" Text="Firm Name" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                     <asp:TextBox ID="Firm_Name" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
                </div>
                <div class="col">
                      <asp:Label ID="L_D_L_No" runat="server" Text="Disposal L No" Height="30px" TabIndex="5" Width="120px"  ></asp:Label>
                     <asp:TextBox ID="D_L_No" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
                </div>
                <div class="col">
                         <asp:Label ID="L_D_Remarks" runat="server" Text="Disposal Remarks" Height="30px" TabIndex="5" Width="120px" ></asp:Label>
                         <asp:TextBox ID="D_Remarks" runat="server" Height="30px" TabIndex="5" Width="120px" ></asp:TextBox>
                 </div>
                <div class="col">

                </div>
           </div>


            <br />
            <br />
           
           
              
               
                  <asp:Button ID="Submit" runat="server" Text="Submit" BackColor="#00CCFF" BorderStyle="Solid" Font-Bold="True" Font-Size="20px" />
                       
            </div>
            </div>
            </div>
        </form>
    <p>
        </p>
</body>
</html>
