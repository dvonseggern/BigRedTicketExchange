<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="MessageCenter.aspx.vb" Inherits="BigRedTicketExchange.MessageCenter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

    <h1>Message Center</h1>

			<div class="col-sm-12">
			    <asp:button class="btn btn-default" runat="server" id="Compose" Text="Compose Message"></asp:button>
            </div>
    
            <div class="col-sm-12">
				<asp:Table runat="server" Width="1100" CellPadding="2" CellSpacing="1" BorderWidth="2">
                    <asp:TableHeaderRow runat="server" Font-Bold="True">
                        <asp:TableHeaderCell Width="20%">From</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="20%">Date</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="40%">Subject</asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%"></asp:TableHeaderCell>
                        <asp:TableHeaderCell Width="10%"></asp:TableHeaderCell>
                    </asp:TableHeaderRow>
                    <asp:TableRow ID="TableRow1" runat="server">
                        <asp:TableCell>John</asp:TableCell>
                        <asp:TableCell>3/18/2016</asp:TableCell>
                        <asp:TableCell>Football Ticket for Wyoming</asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button2" Text="View"></asp:button></asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button3" Text="Delete"></asp:button></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow2" runat="server">
                        <asp:TableCell>Amanda</asp:TableCell>
                        <asp:TableCell>3/18/2016</asp:TableCell>
                        <asp:TableCell>Volleyball Ticket for Penn State</asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button4" Text="View"></asp:button></asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button5" Text="Delete"></asp:button></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow3" runat="server">
                        <asp:TableCell>Jenny</asp:TableCell>
                        <asp:TableCell>3/18/2016</asp:TableCell>
                        <asp:TableCell>Football Ticket for Oregon</asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button6" Text="View"></asp:button></asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button7" Text="Delete"></asp:button></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow ID="TableRow4" runat="server">
                        <asp:TableCell>Jake</asp:TableCell>
                        <asp:TableCell>3/18/2016</asp:TableCell>
                        <asp:TableCell>Basketball Ticket for Michigan State</asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button8" Text="View"></asp:button></asp:TableCell>
                        <asp:TableCell><asp:button class="btn btn-default" runat="server" id="Button9" Text="Delete"></asp:button></asp:TableCell>
                    </asp:TableRow>
				</asp:Table>
			</div>

        </div>
</asp:Content>