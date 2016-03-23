Public Class MessageCenter
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Private Sub Button2_ServerClick(sender As Object, e As EventArgs) Handles Button2.Click
        Server.Transfer("ViewMessage.aspx")
    End Sub

    Private Sub Compose_ServerClick(sender As Object, e As EventArgs) Handles Compose.Click
        Server.Transfer("SendMessage.aspx")
    End Sub

End Class