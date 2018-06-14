<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Simple Theme</title>
<link href="css/common.css" rel="stylesheet" type="text/css">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
    <form id="form1" runat="server">
<div class="container">
  <header>
    <div class="primary_header">
      <h1 class="title"> <a href="index.aspx">Quản lý bán hàng</a> </h1>
    </div>
    <nav class="secondary_header" id="menu">
      <ul>
        <li><a href="hanghoa.aspx">HÀNG HÓA</a></li>
        <li><a href="hhsx.aspx">HÃNG SẢN XUẤT</a></li>
        <li><a href="hoadon.aspx">HÓA ĐƠN</a></li>
        <li><a href="hdct.aspx">HÓA ĐƠN CHI TIẾT</a></li>
        <li><a href="khachhang.aspx">KHÁCH HÀNG</a></li>
        <li><a href="quanly.aspx">QUẢN LÝ</a></li>
      </ul>
    </nav>
  </header>
  <section>
    <h2 class="noDisplay">Hàng hóa sản xuất</h2>
      <br />
      <asp:FormView ID="FormView1" runat="server" DataKeyNames="HANGSANXUAT_ID" DataSourceID="SqlDataSource1">
          
          <InsertItemTemplate>
              HANGSANXUAT_ID:
              <asp:TextBox ID="HANGSANXUAT_IDTextBox" runat="server" Text='<%# Bind("HANGSANXUAT_ID") %>' />
              <br />
              TENHANG:
              <asp:TextBox ID="TENHANGTextBox" runat="server" Text='<%# Bind("TENHANG") %>' />
              <br />
              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          </InsertItemTemplate>
          <ItemTemplate>
                           &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
          </ItemTemplate>
      </asp:FormView>
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="HANGSANXUAT_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
          <Columns>
              <asp:BoundField DataField="HANGSANXUAT_ID" HeaderText="HÃNG ID" ReadOnly="True" SortExpression="HANGSANXUAT_ID" />
              <asp:BoundField DataField="TENHANG" HeaderText="TÊN HÃNG" SortExpression="TENHANG" />
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />

          </Columns>
          <FooterStyle BackColor="White" ForeColor="#000066" />
          <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
          <RowStyle ForeColor="#000066" />
          <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#007DBB" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#00547E" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BAN_HANG_HOAConnectionString1 %>" DeleteCommand="DELETE FROM [HANG_SAN_XUAT] WHERE [HANGSANXUAT_ID] = @original_HANGSANXUAT_ID AND [TENHANG] = @original_TENHANG" InsertCommand="INSERT INTO [HANG_SAN_XUAT] ([HANGSANXUAT_ID], [TENHANG]) VALUES (@HANGSANXUAT_ID, @TENHANG)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [HANGSANXUAT_ID], [TENHANG] FROM [HANG_SAN_XUAT]" UpdateCommand="UPDATE [HANG_SAN_XUAT] SET [TENHANG] = @TENHANG WHERE [HANGSANXUAT_ID] = @original_HANGSANXUAT_ID AND [TENHANG] = @original_TENHANG">
          <DeleteParameters>
              <asp:Parameter Name="original_HANGSANXUAT_ID" Type="Int32" />
              <asp:Parameter Name="original_TENHANG" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="HANGSANXUAT_ID" Type="Int32" />
              <asp:Parameter Name="TENHANG" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="TENHANG" Type="String" />
              <asp:Parameter Name="original_HANGSANXUAT_ID" Type="Int32" />
              <asp:Parameter Name="original_TENHANG" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      <br />
  </section>
  
  
  <div class="social">
    <p class="social_icon"><img src="images/bkg_06.png" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/bkg_06.png" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/bkg_06.png" width="100" alt="" class="thumbnail"/></p>
    <p class="social_icon"><img src="images/bkg_06.png" width="100" alt="" class="thumbnail"/></p>
  </div>
  <footer class="secondary_header footer">
    <div class="copyright">&copy;2018 - <strong>©2018 Copyright by FPT Polytecnic</strong></div>
  </footer>
</div>
    </form>
</body>
</html>
