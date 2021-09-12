<script runat="server">
    Protected Sub Button1_Click1(sender As Object, e As EventArgs)

    End Sub

    Protected Sub RadioButtonList1_SelectedIndexChanged(sender As Object, e As EventArgs)

    End Sub
</script>
<form id="form1" runat="server">
    <br />
    <hr />
    <br />
    <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" RepeatDirection="Horizontal">
        <asp:ListItem Value="1">BulletedList</asp:ListItem>
        <asp:ListItem Value="1">File Upload</asp:ListItem>
    </asp:RadioButtonList>
    <br />
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
            <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="XmlDataSource1" DataTextField="text" DataValueField="url" DisplayMode="HyperLink">
                <asp:ListItem Value="http://www.microsoft.com">Microsoft</asp:ListItem>
            </asp:BulletedList>
            <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/hyperlinks.xml"></asp:XmlDataSource>
        </asp:View>
        <asp:View ID="View2" runat="server">
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <br />
            <br />
            <asp:Button ID="Upload" runat="server" OnClick="Button1_Click1" Text="Upload" />
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server">HyperLink</asp:HyperLink>
        </asp:View>
    </asp:MultiView>
</form>
