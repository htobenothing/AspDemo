<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="advancePage.aspx.cs" Inherits="MyWebApp.advancePage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:ImageMap runat="server" ImageUrl="~/Image/duck.jpg" Height="376px" Width="467px" HotSpotMode="Navigate" BorderStyle="Dotted">
            <asp:RectangleHotSpot Bottom="20" NavigateUrl="~/WelcomePage.aspx" />
        </asp:ImageMap>
        
       <asp:multiview id="multiview1" runat="server" activeviewindex="1" onactiveviewchanged="MultiView1_ActiveViewChanged">
            <asp:view runat="server" id="vhello">
                Hello
                <asp:button runat="server" ID="btncontrol" Text="go to next page"  commandname="nextview"/>
            </asp:view>
            <asp:view runat="server" id="vgood">
                good
                <asp:button runat="server" ID="Button1" Text="go to next page"  commandname="nextview"/>
            </asp:view>
            <asp:view runat="server" id="vworld">
                world
                <asp:button runat="server" ID="Button2" Text="go to next page"  commandname="nextview"/>
            </asp:view>

        </asp:multiview>


         <asp:MultiView ID="MultiView2" runat="server" ActiveViewIndex="2"  onactiveviewchanged="MultiView1_ActiveViewChanged" >
               <asp:View ID="View1" runat="server">
                  <h3>This is view 1</h3>
                  <br />
                  <asp:Button CommandName="NextView" ID="btnnext1" runat="server" Text = "Go To Next" />
                  <asp:Button CommandArgument="View3" CommandName="SwitchViewByID" ID="btnlast" runat="server" Text  ="Go To Last" />
               </asp:View> 
					
               <asp:View ID="View2" runat="server">
                  <h3>This is view 2</h3>
                  <asp:Button CommandName="NextView" ID="btnnext2" runat="server" Text = "Go To Next" />
                  <asp:Button CommandName="PrevView" ID="btnprevious2" runat="server" Text = "Go To Previous View" />
               </asp:View> 

               <asp:View ID="View3" runat="server">
                  <h3> This is view 3</h3>
                  <br />
                  <asp:Calendar ID="Calender1" runat="server"></asp:Calendar>
                  <br />
                  <asp:Button  CommandArgument="0" CommandName="SwitchViewByIndex" ID="btnfirst"   runat="server" Text = "Go To Next" />
                  <asp:Button CommandName="PrevView" ID="btnprevious" runat="server" Text = "Go To Previous View" />
               </asp:View> 
               
            </asp:MultiView>


    </div>
    </form>
</body>
</html>
