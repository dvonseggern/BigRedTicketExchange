<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="BuyTickets.aspx.vb" Inherits="BigRedTicketExchange.BuyTickets" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Buy Tickets</h1>
        <p>Select the button for the ticket that you'd like to buy to message the user.</p>

          <asp:Table runat="server" CssClass="col-sm-12">
              <asp:TableHeaderRow runat="server" CssClass="col-sm-12">
                  <asp:TableHeaderCell ID="sellerNameHeader" CssClass="col-sm-4">
                      Seller Name
                  </asp:TableHeaderCell>
                                    <asp:TableHeaderCell ID="commentsHeader" CssClass="col-sm-6">
                  Comments
                  </asp:TableHeaderCell>
                                    <asp:TableHeaderCell ID="MessageHeader" CssClass="col-sm-2">
                      Message
                  </asp:TableHeaderCell>
              </asp:TableHeaderRow>
              <asp:TableRow runat="server" CssClass="col-sm-12">
                                <asp:TableCell id="SellerName" CssClass="col-sm-4">
                                    <asp:Label runat="server" ID="SellerNameLabel" Text='Billy' />
                                </asp:TableCell>
                                <asp:tablecell id="Comments" CssClass="col-sm-6">
                                    <asp:Label runat="server" ID="CommentLabel" Text='East Stadium' />

                                </asp:tablecell>
                                <asp:tablecell id="MessageCell" CssClass="col-sm-2">
                                    <asp:Button runat="server" ID="buyTicket" Text="Message"></asp:Button>
                                </asp:tablecell>
                  </asp:TableRow>
              </asp:Table>

    </div>
</asp:Content>
