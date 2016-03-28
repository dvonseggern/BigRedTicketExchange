Public Class SendMessage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim message As New Message
        message = Session("Message")
        If IsNothing(message) Then

        Else
            recipient.Text = message.SenderEmail
            subject.Text = message.Subject
        End If
        If Not IsNothing(Session("MsgRecipient")) Then
            recipient.Text = Session("MsgRecipient")
        End If
    End Sub

    Private Sub Send_ServerClick(sender As Object, e As EventArgs) Handles Send.Click
        Dim db As New DBManager
        Dim mess As New Message
        Dim receiver As New User
        Dim send As New User
        send = Session("LoggedInUser")
        receiver = db.getUserByUsername(recipient.Text)
        mess.SenderID = send.UserID
        mess.SenderEmail = send.Email
        mess.ReceiverID = receiver.UserID
        mess.ReceiverEmail = receiver.Email
        mess.Subject = subject.Text
        mess.Message = message.Text
        mess.DateSent = now
        db.addMessage(mess)
        MsgBox("Message has been sent!")
        Server.Transfer("MessageCenter.aspx")
    End Sub

End Class