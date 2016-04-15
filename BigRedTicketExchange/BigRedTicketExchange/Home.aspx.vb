Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim dbManager As New DBManager

        FootballSchedule.DataSource = dbManager.getFootballGames()
        FootballSchedule.DataBind()

        VolleyballSchedule.DataSource = dbManager.getVolleyballGames()
        VolleyballSchedule.DataBind()

        BasketballSchedule.DataSource = dbManager.getBasketballGames()
        BasketballSchedule.DataBind()


    End Sub

    Protected Sub rpt_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles FootballSchedule.ItemCommand
        If e.CommandName = "Buy" Then
            ' Add code here to add the item to the shopping cart.
            ' Use the value of e.Item.ItemIndex to retrieve the data 
            ' item in the control.
            Dim control As HiddenField = e.Item.FindControl("GameID")
            Session.Add("GameID", control.Value)
            Response.Redirect("BuyTickets.aspx")
        End If
        If e.CommandName = "Sell" Then
            ' Add code here to add the item to the shopping cart.
            ' Use the value of e.Item.ItemIndex to retrieve the data 
            ' item in the control.
            MsgBox("Ticket is posted for sale!")
        End If
    End Sub

    Protected Sub rpt_ItemCommandBasketball(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles BasketballSchedule.ItemCommand
        If e.CommandName = "Buy" Then
            ' Add code here to add the item to the shopping cart.
            ' Use the value of e.Item.ItemIndex to retrieve the data 
            ' item in the control.
            Response.Redirect("BuyTickets.aspx")
        End If
        If e.CommandName = "Sell" Then
            ' Add code here to add the item to the shopping cart.
            ' Use the value of e.Item.ItemIndex to retrieve the data 
            ' item in the control.
            MsgBox("Ticket is posted for sale!")
        End If
    End Sub

End Class