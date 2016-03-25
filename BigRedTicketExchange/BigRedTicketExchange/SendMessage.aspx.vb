Public Class SendMessage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        recipient.Text = Session("MsgRecipient")
        subject.Text = Session("MsgSubject")
        Session("MsgRecipient") = ""
        Session("MsgSubject") = ""
    End Sub

    Private Sub Send_ServerClick(sender As Object, e As EventArgs) Handles Send.Click
        MsgBox("Message has been sent!")
        Server.Transfer("MessageCenter.aspx")
    End Sub

End Class