<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="上傳檔案" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            </div>
        <asp:LinkButton ID="LinkButton1" runat="server" BorderColor="#6699FF" BorderStyle="Ridge" BorderWidth="2px" Font-Names="Segoe MDL2 Assets" Font-Size="Small" Height="73px" Width="60px" ForeColor="Silver">LinkButton</asp:LinkButton>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
            <ContentTemplate>
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="顏色" DataValueField="顏色" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-bottom: 50px">
                </asp:DropDownList>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString4 %>" ProviderName="<%$ ConnectionStrings:ConnectionString4.ProviderName %>" SelectCommand="SELECT 商品ID, 商品圖片 FROM 商品主黨 WHERE (商品ID = ?)">
            <SelectParameters>
                <asp:SessionParameter Name="?" SessionField="picture" />
            </SelectParameters>
        </asp:SqlDataSource>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [購物車] WHERE [編號] = ?" InsertCommand="INSERT INTO [購物車] ([編號], [會員ID], [商品ID], [購買商品], [顏色], [容量], [數量], [價格]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [購物車]" UpdateCommand="UPDATE [購物車] SET [會員ID] = ?, [商品ID] = ?, [購買商品] = ?, [顏色] = ?, [容量] = ?, [數量] = ?, [價格] = ? WHERE [編號] = ?">
            <DeleteParameters>
                <asp:Parameter Name="編號" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="編號" Type="Int32" />
                <asp:Parameter Name="會員ID" Type="Int32" />
                <asp:Parameter Name="商品ID" Type="Int32" />
                <asp:Parameter Name="購買商品" Type="String" />
                <asp:Parameter Name="顏色" Type="String" />
                <asp:Parameter Name="容量" Type="String" />
                <asp:Parameter Name="數量" Type="Int32" />
                <asp:Parameter Name="價格" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="會員ID" Type="Int32" />
                <asp:Parameter Name="商品ID" Type="Int32" />
                <asp:Parameter Name="購買商品" Type="String" />
                <asp:Parameter Name="顏色" Type="String" />
                <asp:Parameter Name="容量" Type="String" />
                <asp:Parameter Name="數量" Type="Int32" />
                <asp:Parameter Name="價格" Type="Int32" />
                <asp:Parameter Name="編號" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="GridView1" />
            </Triggers>
        </asp:UpdatePanel>
        <br />
        <br />
        <asp:PlaceHolder ID="PlaceHolder3" runat="server"></asp:PlaceHolder>
        <br />


            
    </form>
</body>
</html>
