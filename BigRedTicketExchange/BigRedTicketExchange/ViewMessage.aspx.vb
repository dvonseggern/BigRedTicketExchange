Public Class ViewMessage
    Inherits System.Web.UI.Page

    Dim _msg As New Message
    Dim _Sender As New User

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim db As New DBManager
        Dim id As Integer
        id = Session("MessageID")
        _msg = db.getSingleMessageById(id)

    End Sub

    Private Sub Reply_ServerClick(sender As Object, e As EventArgs) Handles Reply.Click
        Session.Add("Message", getMessage())
        Server.Transfer("SendMessage.aspx")
    End Sub

    Private Sub Delete_ServerClick(sender As Object, e As EventArgs) Handles Delete.Click
        Dim messageID As Integer
        Dim db As New DBManager
        messageID = getMessage().MessageID
        db.deleteMessage(messageID)
        Server.Transfer("MessageCenter.aspx")
    End Sub

    Public Function getMessage() As Message
        Return _msg
    End Function

End Class