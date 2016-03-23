<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="ViewMessage.aspx.vb" Inherits="BigRedTicketExchange.ViewMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="col-sm-12">
		<h3>From: John</h3>
        <p>
            Hello, I would love to buy your ticket to the football game vs Wyoming, let me know if it is still available and how much money you would like for the ticket!
            <br />
            Thanks!
            <br />
            John
            <br />
        </p>
	</div>
    <div class="col-sm-12">
        <asp:button class="btn btn-default" runat="server" id="Reply" Text="Reply"></asp:button>
        <asp:button class="btn btn-default" runat="server" id="Delete" Text="Delete"></asp:button>
    </div>

        </div>
</asp:Content>