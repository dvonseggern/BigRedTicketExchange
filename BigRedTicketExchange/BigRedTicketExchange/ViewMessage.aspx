<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="ViewMessage.aspx.vb" Inherits="BigRedTicketExchange.ViewMessage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="col-sm-12">
		<h4>From: <%= getMessage().SenderEmail%></h4>
        <h4>Subject: <%= getMessage().Subject%></h4>
        <h4>Date: <%= getMessage().DateSent%></h4>
        <p><%= getMessage().Message%></p>
	</div>
    <div class="col-sm-12">
        <asp:button class="btn btn-default" runat="server" id="Reply" Text="Reply"></asp:button>
        <asp:button class="btn btn-default" runat="server" id="Delete" Text="Delete"></asp:button>
    </div>

        </div>
</asp:Content>