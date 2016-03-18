Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim dbManager As New DBManager

        FootballSchedule.DataSource = dbManager.getFootballGames()
        FootballSchedule.DataBind()

    End Sub

End Class