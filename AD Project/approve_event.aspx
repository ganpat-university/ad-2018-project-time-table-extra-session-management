<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="approve_event.aspx.cs" Inherits="AD_Project.approve_event" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<style>
body {
  background-color:rgb(255, 206, 101);
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

    .topnav {
        position: page;
        bottom: 0;
        width: 96%;
        padding-top: 0px;
        padding-bottom: 2px;
        text-align: center;
        height: 38px;
        margin-top: 3%;
        background: black;
        color: #56baed;
        font-size: 9px;
        background-color: rgb(163, 38, 33);
        border-top: 1px solid #dce8f1;
        text-align: center;
        -webkit-border-radius: 0 0 10px 10px;
        border-radius: 0 0 10px 10px;
    }

        .topnav a {
            background: #f6f6f6;
            float: left;
            color: black;
            text-align: center;
            padding: 10px 35px;
            text-decoration: solid;
            font-size: 17px;
        }

.topnav a:hover {
                background-color: aliceblue;
                color: black;
}

.topnav a.active {
  background-color: #f0f8ff;
  color: black;
}

    .header {
        width: 100%;
        position: fixed;
        margin-left: 170px;
        padding: 10px;
        text-align: center;
        background: #4CAF50;
        color: white;
        font-size: 10px;
    }

    .footer {
        position: page;
        bottom: 0;
        width: 96%;
        padding-top: 0px;
        padding-bottom: 2px;
        text-align: center;
        height: 37px;
        margin-top: 8%;
        background: black;
        color: aliceblue;
        font-size: 9px;
        background-color: rgb(163, 38, 33);
        border-top: 1px solid #dce8f1;
        text-align: center;
        -webkit-border-radius: 0 0 10px 10px;
        border-radius: 0 0 10px 10px;
    }

    .wrapper {
        display: flex;
        align-items: center;
        flex-direction: column;
        justify-content: center;
        width: 100%;
        min-height: 100%;
        padding: 20px;
    }

    #formContent {
        -webkit-border-radius: 10px 10px 10px 10px;
        border-radius: 10px 10px 10px 10px;
        background-color: rgb(163, 38, 33);
        padding: 30px;
        color: aliceblue;
        width: 90%;
        max-width: 100%;
        position: relative;
        padding: 0px;
        -webkit-box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        box-shadow: 0 30px 60px 0 rgba(0,0,0,0.3);
        text-align: center;
    }
.approve {
    font-weight:bold;
    background-color: rgb(255, 206, 101);
    border:none;
    font-size:15px;
    margin-left:40%;
}
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="wrapper">
        <div id="formContent">
            <h1>Event Submission Process</h1>
            <p>My supercool header</p>
        </div>
        <br />
        <div>
            <asp:TextBox ID="approved" Text="Data Approved Successfully" runat="server" CssClass="approve" Visible="false"></asp:TextBox>
            <asp:GridView ID="GridView1" runat="server" CellPadding="13" CellSpacing="2" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="OnSelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:ButtonField CommandName="Select" HeaderText="Approve Event" ShowHeader="True" Text="Approve" ControlStyle-CssClass="grid" ItemStyle-HorizontalAlign="Center"/>                            
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
        <div class="footer">
            <h1>Updated <%= DateTime.Now.ToString("dddd, MMMM dd") %></h1>
        </div>
    </div>
    </form>
</body>
</html>
