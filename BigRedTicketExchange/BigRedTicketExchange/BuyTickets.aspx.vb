Public Class BuyTickets
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub buyTicket_Click(sender As Object, e As EventArgs) Handles buyTicket.Click
        Session.Add("MsgRecipient", SellerNameLabel.Text)
        Server.Transfer("SendMessage.aspx")
    End Sub
End Class