Imports MySql.Data.MySqlClient


Public Class DBManager

    Public Function ConnectToDB() As MySqlConnection

        Dim MysqlConn As MySqlConnection

        MysqlConn = New MySqlConnection()

        MysqlConn.ConnectionString = "server=cse.unl.edu;" _
        & "user id=dvonsegg;" _
        & "password=MT4xJJ;" _
        & "database=dvonsegg"

        Return MysqlConn

    End Function

    Public Function getFootballGames() As List(Of Football)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim footballGameList As New List(Of Football)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Games WHERE sportid=1", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Games")

            For Each row As DataRow In ds.Tables("Games").Rows
                Dim footballGame As New Football
                footballGame.GameID = row.Item("GameID")
                footballGame.GameDate = row.Item("Date")
                footballGame.Opponent = row.Item("Opponent")
                footballGame.IsActive = row.Item("IsActive")
                footballGame.SportID = row.Item("SportID")

                footballGameList.Add(footballGame)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return footballGameList

    End Function

End Class
