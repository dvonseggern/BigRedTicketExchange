<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/BRTE.Master" CodeBehind="Home.aspx.vb" Inherits="BigRedTicketExchange.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

         <div style="margin-top:20px;">
    <div class="clearfix container">
        <div id="jumbotron">
            <img src="/images/Banner.PNG" />
        </div>
    </div>
    <p class="lead">Connect with buyers and sellers in a streamlined student ticket exchange experience!</p>

</div>
<div class="row">
    <div class="col-sm-4 footballDiv center-block">
        
        <a href="#" id="footballbutton"><img id="footballImage" src="/images/FootballButton.PNG" /></a>

        <div id="fsched" style="display: none;">

            <asp:Repeater runat="server" ID="FootballSchedule">
              <itemtemplate>
                    <td id="OpponentFootball">
                       <asp:Label runat="server" ID="Opponent"    text='<%# Eval("Opponent") %>' />
                     </td>
                     <td id="DateFootball">
                      <asp:Label runat="server" ID="GameDate" text='<%# Eval("GameDate") %>' />
 
                      </td>
                      <td id="BuySellFootball">
                          <asp:button runat="server" ID="buyFootball"  Text="Buy"></asp:button>
                          <asp:button runat="server" ID="sellFootball" Text="Sell"></asp:button>
                      </td>
                 </itemtemplate>
                              <alternatingitemtemplate>
                    <td id="OpponentFootball">
                       <asp:Label runat="server" ID="Opponent"   text='<%# Eval("Opponent") %>' />
                     </td>
                     <td id="DateFootball">
                      <asp:Label runat="server" ID="GameDate" text='<%# Eval("GameDate") %>' />
 
                      </td>
                      <td id="BuySellFootball">
                          <asp:button runat="server" ID="buyFootball"  Text="Buy"></asp:button>
                          <asp:button runat="server" ID="sellFootball" Text="Sell"></asp:button>
                      </td>
                 </alternatingitemtemplate>
            </asp:Repeater>

        </div>
    </div>
    <div class="col-sm-4 basketballDiv center-block">
        <a href="#" id="basketballbutton"><img src="/images/BasketballButton.PNG" /></a>
        <div id="bsched" style="display: none;">
                        <asp:Repeater runat="server" ID="BasketballSchedule">
              <itemtemplate>
                    <td id="OpponentBasketball">
                       <asp:Label runat="server" ID="Opponent"    text='<%# Eval("Opponent") %>' />
                     </td>
                     <td id="DateBasketball">
                      <asp:Label runat="server" ID="GameDate" text='<%# Eval("GameDate") %>' />
 
                      </td>
                      <td id="BuySellBasketball">
                          <asp:button runat="server" ID="buyBasketball"  Text="Buy"></asp:button>
                          <asp:button runat="server" ID="sellBasketball" Text="Sell"></asp:button>
                      </td>
                 </itemtemplate>
                              <alternatingitemtemplate>
                    <td id="OpponentBasketball">
                       <asp:Label runat="server" ID="Opponent"    text='<%# Eval("Opponent") %>' />
                     </td>
                     <td id="DateBasketball">
                      <asp:Label runat="server" ID="GameDate" text='<%# Eval("GameDate") %>' />
 
                      </td>
                      <td id="BuySellBasketball">
                          <asp:button runat="server" ID="buyBasketball"  Text="Buy"></asp:button>
                          <asp:button runat="server" ID="sellBasketball" Text="Sell"></asp:button>
                      </td>
                 </alternatingitemtemplate>
            </asp:Repeater>
        </div>
    </div>
    <div class="col-sm-4 volleyballDiv center-block">
        <a href="#" id="volleyballbutton"><img src="/images/VolleyballButton.PNG" /></a>
        <div id="vsched" style="display: none;">
                                    <asp:Repeater runat="server" ID="VolleyballSchedule">
              <itemtemplate>
                    <td id="OpponentVolleyball">
                       <asp:Label runat="server" ID="Opponent"    text='<%# Eval("Opponent") %>' />
                     </td>
                     <td id="DateVolleyball">
                      <asp:Label runat="server" ID="GameDate" text='<%# Eval("GameDate") %>' />
 
                      </td>
                      <td id="BuySellVolleyball">
                          <asp:button runat="server" ID="buyVolleyball"  Text="Buy"></asp:button>
                          <asp:button runat="server" ID="sellVolleyball" Text="Sell"></asp:button>
                      </td>
                 </itemtemplate>
                              <alternatingitemtemplate>
                     <td id="OpponentVolleyball">
                       <asp:Label runat="server" ID="Opponent"    text='<%# Eval("Opponent") %>' />
                     </td>
                     <td id="DateVolleyball">
                      <asp:Label runat="server" ID="GameDate" text='<%# Eval("GameDate") %>' />
 
                      </td>
                      <td id="BuySellVolleyball">
                          <asp:button runat="server" ID="buyVolleyball"  Text="Buy"></asp:button>
                          <asp:button runat="server" ID="sellVolleyball" Text="Sell"></asp:button>
                      </td>
                 </alternatingitemtemplate>
            </asp:Repeater>
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
