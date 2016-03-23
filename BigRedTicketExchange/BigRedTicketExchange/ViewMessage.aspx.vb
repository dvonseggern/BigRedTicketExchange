Public Class ViewMessage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub Reply_ServerClick(sender As Object, e As EventArgs) Handles Reply.Click
        Server.Transfer("SendMessage.aspx")
    End Sub

End Class