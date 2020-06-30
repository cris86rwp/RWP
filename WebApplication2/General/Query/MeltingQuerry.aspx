<%@ Page Title="Melting Queries" Language="vb" AutoEventWireup="false" Codebehind="MeltingQuerry.aspx.vb" Inherits="WebApplication2.MeltingQuerry" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>MeltingQuerry</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body  bgColor="#99ccff">
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 8px" runat="server" Width="345px">
				<TABLE id="Table1" style="WIDTH: 291px; HEIGHT: 176px" cellSpacing="1" cellPadding="1" width="291" border="1">
					<TR>
						<TD align="center" colSpan="6"><FONT size="5">Melting Queries</FONT></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="6">
							<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
					</TR>
					<TR>
						<TD vAlign="top"  align ="center"    colSpan="6">
							<asp:RadioButtonList id="rblList" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" AutoPostBack="True">
								<asp:ListItem Value="Date" Selected="True">Date</asp:ListItem>
								<asp:ListItem Value="Heat">Heat</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD>From</TD>
						<TD>:</TD>
						<TD>
							<asp:TextBox id="txtFrom" runat="server" Width="82px"></asp:TextBox></TD>
						<TD>To</TD>
						<TD>:</TD>
						<TD>
							<asp:TextBox id="txtTo" runat="server" Width="81px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD>Carbon&gt;=</TD>
						<TD>:</TD>
						<TD colSpan="4">
							<asp:TextBox id="txtCar" runat="server" Width="51px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="HEIGHT: 20px" align="center" colSpan="6">
							<asp:RadioButtonList id="rblQry" runat="server" Width="531px" Height="1px">
								<asp:ListItem Value="1" Selected="True">Carbon Details </asp:ListItem>
								<asp:ListItem Value="2">Heat Position</asp:ListItem>
								<asp:ListItem Value="3">PowerConsumption</asp:ListItem>
								<asp:ListItem Value="4">SMS XC DETAILS </asp:ListItem>
								<asp:ListItem Value="5">Magna OffLoads DateWise</asp:ListItem>
								<asp:ListItem Value="6">Recovery Analysis</asp:ListItem>
								<asp:ListItem Value="7">XC 51 Analysis</asp:ListItem>
								<asp:ListItem Value="8">Electrode Breakage</asp:ListItem>
								<asp:ListItem Value="9">Fettling Details</asp:ListItem>
								<asp:ListItem Value="10">PTMS Contracts Date Wise</asp:ListItem>
								<asp:ListItem Value="11">RSM LOA Details</asp:ListItem>
								<asp:ListItem Value="12">JMP Details</asp:ListItem>
								<asp:ListItem Value="13">Ladle Usage Date Wise</asp:ListItem>
								<asp:ListItem Value="14">Off Heats Date Wise</asp:ListItem>
								<asp:ListItem Value="15">Fume Extraction Date Wise</asp:ListItem>
								<asp:ListItem Value="16">Slag Results Date Wise</asp:ListItem>
								<asp:ListItem Value="17">Melt Shop Heat Loss Date Wise</asp:ListItem>
								<asp:ListItem Value="18">Melting Items Make &amp; Qty</asp:ListItem>
							</asp:RadioButtonList></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="6">
							<asp:Button id="btnReport" runat="server" Width="118px" Text="Show Results"></asp:Button></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="6">
							<asp:Button id="Button1" runat="server" Text="Export to Excel"></asp:Button></TD>
					</TR>
				</TABLE>
				<asp:DataGrid id="DataGrid1" runat="server" Width="534px" CellPadding="4" BackColor="White" BorderWidth="1px" BorderStyle="None" BorderColor="#CC9966">
					<SelectedItemStyle Font-Bold="True" ForeColor="#663399" BackColor="#FFCC66"></SelectedItemStyle>
					<ItemStyle ForeColor="#330099" BackColor="White"></ItemStyle>
					<HeaderStyle Font-Bold="True" ForeColor="#FFFFCC" BackColor="#990000"></HeaderStyle>
					<FooterStyle ForeColor="#330099" BackColor="#FFFFCC"></FooterStyle>
					<PagerStyle HorizontalAlign="Center" ForeColor="#330099" BackColor="#FFFFCC"></PagerStyle>
				</asp:DataGrid>
			</asp:panel>
		</form>
	</body>
</HTML>
