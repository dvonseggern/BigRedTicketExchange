<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="Home.aspx.vb" Inherits="BigRedTicketExchange.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container" style="margin-top: 20px;">
        <div class="container">
            <div id="jumbotron">
                <img src="/images/Banner.PNG" />
            </div>
        </div>

        <div>
            <p class="lead">Connect with buyers and sellers in a streamlined student ticket exchange experience!</p>


            <div class="row">
                <div class="col-sm-4 footballDiv center-block">

                    <a href="#" id="footballbutton">
                        <img id="footballImage" src="/images/FootballButton.PNG" /></a>

                    <div id="fsched" style="display: none;">

                        <asp:Repeater runat="server" ID="FootballSchedule">
                            <ItemTemplate>
                                <td id="OpponentFootball">
                                    <asp:Label runat="server" ID="Opponent" Text='<%# Eval("Opponent") %>' />
                                </td>
                                <td id="DateFootball">
                                    <asp:Label runat="server" ID="GameDate" Text='<%# Eval("GameDate") %>' />

                                </td>
                                <td id="BuySellFootball">
                                    <asp:Button runat="server" ID="buyFootball" Text="Buy"></asp:Button>
                                    <asp:Button runat="server" ID="sellFootball" Text="Sell"></asp:Button>
                                </td>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <td id="OpponentFootball">
                                    <asp:Label runat="server" ID="Opponent" Text='<%# Eval("Opponent") %>' />
                                </td>
                                <td id="DateFootball">
                                    <asp:Label runat="server" ID="GameDate" Text='<%# Eval("GameDate") %>' />

                                </td>
                                <td id="BuySellFootball">
                                    <asp:Button runat="server" ID="buyFootball" Text="Buy"></asp:Button>
                                    <asp:Button runat="server" ID="sellFootball" Text="Sell"></asp:Button>
                                </td>
                            </AlternatingItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
                <div class="col-sm-4 basketballDiv center-block">
                    <a href="#" id="basketballbutton">
                        <img src="/images/BasketballButton.PNG" /></a>
                    <div id="bsched" style="display: none;">
                        <asp:Repeater runat="server" ID="BasketballSchedule">
                            <ItemTemplate>
                                <td id="OpponentBasketball">
                                    <asp:Label runat="server" ID="Opponent" Text='<%# Eval("Opponent") %>' />
                                </td>
                                <td id="DateBasketball">
                                    <asp:Label runat="server" ID="GameDate" Text='<%# Eval("GameDate") %>' />

                                </td>
                                <td id="BuySellBasketball">
                                    <asp:Button runat="server" ID="buyBasketball" Text="Buy"></asp:Button>
                                    <asp:Button runat="server" ID="sellBasketball" Text="Sell"></asp:Button>
                                </td>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <td id="OpponentBasketball">
                                    <asp:Label runat="server" ID="Opponent" Text='<%# Eval("Opponent") %>' />
                                </td>
                                <td id="DateBasketball">
                                    <asp:Label runat="server" ID="GameDate" Text='<%# Eval("GameDate") %>' />

                                </td>
                                <td id="BuySellBasketball">
                                    <asp:Button runat="server" ID="buyBasketball" Text="Buy"></asp:Button>
                                    <asp:Button runat="server" ID="sellBasketball" Text="Sell"></asp:Button>
                                </td>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <div class="col-sm-4 volleyballDiv center-block">
                    <a href="#" id="volleyballbutton">
                        <img src="/images/VolleyballButton.PNG" /></a>
                    <div id="vsched" style="display: none;">
                        <asp:Repeater runat="server" ID="VolleyballSchedule">
                            <ItemTemplate>
                                <td id="OpponentVolleyball">
                                    <asp:Label runat="server" ID="Opponent" Text='<%# Eval("Opponent") %>' />
                                </td>
                                <td id="DateVolleyball">
                                    <asp:Label runat="server" ID="GameDate" Text='<%# Eval("GameDate") %>' />

                                </td>
                                <td id="BuySellVolleyball">
                                    <asp:Button runat="server" ID="buyVolleyball" Text="Buy"></asp:Button>
                                    <asp:Button runat="server" ID="sellVolleyball" Text="Sell"></asp:Button>
                                </td>
                            </ItemTemplate>
                            <AlternatingItemTemplate>
                                <td id="OpponentVolleyball">
                                    <asp:Label runat="server" ID="Opponent" Text='<%# Eval("Opponent") %>' />
                                </td>
                                <td id="DateVolleyball">
                                    <asp:Label runat="server" ID="GameDate" Text='<%# Eval("GameDate") %>' />

                                </td>
                                <td id="BuySellVolleyball">
                                    <asp:Button runat="server" ID="buyVolleyball" Text="Buy"></asp:Button>
                                    <asp:Button runat="server" ID="sellVolleyball" Text="Sell"></asp:Button>
                                </td>
                            </AlternatingItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <script type="text/javascript">
        $(function () {

            $('#footballbutton').click(function () {
                $('#fsched').toggle();
                return false;
            });
            $('#volleyballbutton').click(function () {
                $('#vsched').toggle();
                return false

            });
            $('#basketballbutton').click(function () {
                $('#bsched').toggle();
                return false;

            });
        });
        $(function () {
            $('.fsellticket').click(function () {
                $(userinfomodal).modal('show');
            });
            $('.vsellticket').click(function () {
                $(userinfomodal).modal('show');
            });
            $('.bsellticket').click(function () {
                $(userinfomodal).modal('show');
            });
        });
        $(function () {

        });
    </script>
</asp:Content>
