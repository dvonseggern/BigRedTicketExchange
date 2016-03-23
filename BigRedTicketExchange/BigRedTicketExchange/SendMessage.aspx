﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="SendMessage.aspx.vb" Inherits="BigRedTicketExchange.SendMessage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Send Message</h1>
    
    <div class="form-group col-sm-12">
		<label for="recipient" class="col-sm-2 control-label">To:</label>
		<div class="col-sm-4">
			<asp:textbox runat="server" class="form-control" placeholder="Recipient" name="recipient" id="recipient"></asp:textbox>
		</div>
	</div>
    <div class="form-group col-sm-12">
		<label for="subject" class="col-sm-2 control-label">Subject:</label>
		<div class="col-sm-4">
			<asp:textbox runat="server" class="form-control" placeholder="Subject" name="subject" id="subject" TextMode="Search"></asp:textbox>
		</div>
	</div>
    <div class="form-group col-sm-12">
		<label for="message" class="col-sm-2 control-label">Message:</label>
		<div class="col-sm-4">
			<asp:textbox runat="server" class="form-control" placeholder="Message" name="message" id="message" TextMode="MultiLine"></asp:textbox>
		</div>
	</div>
    <div class="col-sm-12">
        <asp:button class="btn btn-default" runat="server" id="Send" Text="Send"></asp:button>
        <asp:button class="btn btn-default" runat="server" id="Discard" Text="Discard"></asp:button>
    </div>

</asp:Content>