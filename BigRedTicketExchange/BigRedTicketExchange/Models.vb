Public Class Models

End Class

Public Class Sport
    Public Property SportID As Integer
    Public Property Name As String
    Public Property Games As List(Of Game)
End Class

Public Class Game
    Public Property GameID As Integer
    Public Property GameDate As DateTime
    Public Property Opponent As String
    Public Property IsActive As Boolean
    Public Property SportID As Integer
End Class

Public Class Ticket
    Public Property TicketID As Integer
    Public Property GameID As Integer
    Public Property UserID As Integer
    Public Property IsAvailable As Boolean
    Public Property Visible As Boolean
End Class

Public Class User
    Public Property UserID As Integer
    Public Property FirstName As String
    Public Property LastName As String
    Public Property Email As String
    Public Property NUID As String
    Public Property PhoneNumber As String
    Public Property Password As String
    Public Property IsSeller As Boolean
End Class

Public Class Message
    Public Property MessageID As Integer
    Public Property SenderID As Integer
    Public Property ReceiverID As Integer
    Public Property SenderEmail As String
    Public Property ReceiverEmail As String
    Public Property Subject As String
    Public Property Message As String
    Public Property DateSent As DateTime
End Class
