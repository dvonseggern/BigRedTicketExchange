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

    Public Function getFootballGames() As List(Of Game)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim footballGameList As New List(Of Game)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Games WHERE sportid=1", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Games")

            For Each row As DataRow In ds.Tables("Games").Rows
                Dim footballGame As New Game
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

    Public Function getVolleyballGames() As List(Of Game)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim volleyballGameList As New List(Of Game)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Games WHERE sportid=2", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Games")

            For Each row As DataRow In ds.Tables("Games").Rows
                Dim volleyballGame As New Game
                volleyballGame.GameID = row.Item("GameID")
                volleyballGame.GameDate = row.Item("Date")
                volleyballGame.Opponent = row.Item("Opponent")
                volleyballGame.IsActive = row.Item("IsActive")
                volleyballGame.SportID = row.Item("SportID")

                volleyballGameList.Add(volleyballGame)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return volleyballGameList

    End Function

    Public Function getBasketballGames() As List(Of Game)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim basketballGameList As New List(Of Game)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from dvonsegg.Games WHERE sportid=3", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "Games")

            For Each row As DataRow In ds.Tables("Games").Rows
                Dim basketballGame As New Game
                basketballGame.GameID = row.Item("GameID")
                basketballGame.GameDate = row.Item("Date")
                basketballGame.Opponent = row.Item("Opponent")
                basketballGame.IsActive = row.Item("IsActive")
                basketballGame.SportID = row.Item("SportID")

                basketballGameList.Add(basketballGame)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return basketballGameList

    End Function


    Public Function getUserByUsernameAndPassword(ByVal email As String, ByVal Password As String) As User

        Dim userList As List(Of User) = getFullUsersList()

        For Each user As User In userList
            If email = user.Email AndAlso Password = user.Password Then
                Return user
            End If
        Next


    End Function

    Public Function getFullUsersList() As List(Of User)

        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim usersList As New List(Of User)


        Try

            mySQLConn.Open()

            Dim cmd As New MySqlCommand("select * from User", mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "User")

            For Each row As DataRow In ds.Tables("User").Rows
                Dim user As New User
                user.UserID = row.Item("UserID")
                user.FirstName = row.Item("FirstName")
                user.LastName = row.Item("LastName")
                user.Email = row.Item("Email")
                user.NUID = row.Item("NUID")
                user.PhoneNumber = row.Item("PhoneNumber")
                user.Password = row.Item("Password")

                usersList.Add(user)
            Next

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return usersList

    End Function

    Public Function addUser(ByVal user As User)


        Dim mySQLConn As MySqlConnection = ConnectToDB()
        Dim ds As New DataSet
        Dim usersList As New List(Of User)


        Try

            mySQLConn.Open()

            ' INSERT INTO `dvonsegg`.`User` (`UserID`, `FirstName`, `LastName`, `Email`, `NUID`, `PhoneNumber`, `Password`) VALUES ('1', 'Derek', 'Von Seggern', 'dvon@email.com', '12345678', '402-555-5555', '123');

            Dim sqlCommand As String = String.Format("insert into dvonsegg.User ('FirstName', 'LastName', 'Email', 'NUID', 'PhoneNumber', 'Password') Values ('{0}', '{1}', '{2}', '{3}', '{4}', '{5}')", user.FirstName, user.LastName, user.Email, user.NUID, user.PhoneNumber, user.Password)

            Dim cmd As New MySqlCommand(sqlCommand, mySQLConn)
            Dim da As MySqlDataAdapter = New MySqlDataAdapter(cmd)

            da.Fill(ds, "User")

            mySQLConn.Close()

        Catch myerror As MySqlException

        Finally

            mySQLConn.Dispose()

        End Try

        Return usersList

    End Function
End Class
