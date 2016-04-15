Public Class ViewMessage
    Inherits System.Web.UI.Page

    Dim msg As New Message
    Dim u As User
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim db As New DBManager
        Dim id As Integer
        id = Session("MessageID")
        Session.Remove("MessageID")
        Session.Add("Message", msg)
        msg = db.getSingleMessageById(id)
        u = db.getUserByID(msg.SenderID)
        SenderName.InnerText = "From: " & u.FirstName & " " & u.LastName
        Subject.InnerText = "Subject: " & msg.Subject
        DateSent.InnerText = "Date: " & msg.DateSent
        Message.InnerText = msg.Message

    End Sub

    Private Sub Reply_ServerClick(sender As Object, e As EventArgs) Handles Reply.Click
        Session.Add("Message", msg)
        Session.Add("Sender", u)
        Server.Transfer("SendMessage.aspx")
    End Sub

    Private Sub Delete_ServerClick(sender As Object, e As EventArgs) Handles Delete.Click
        Dim messageID As Integer
        Dim db As New DBManager
        messageID = msg.MessageID
        db.deleteMessage(messageID)
        Server.Transfer("MessageCenter.aspx")
    End Sub

End Class