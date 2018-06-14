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
    <h2 class="noDisplay">Hóa đơn</h2>
      <br />
      <asp:FormView ID="FormView1" runat="server" DataKeyNames="HOADON_ID" DataSourceID="SqlDataSource1">
          
          <InsertItemTemplate>
              HOADON_ID:
              <asp:TextBox ID="HOADON_IDTextBox" runat="server" Text='<%# Bind("HOADON_ID") %>' />
              <br />
              KHACHANG_ID:
              <asp:TextBox ID="KHACHANG_IDTextBox" runat="server" Text='<%# Bind("KHACHANG_ID") %>' />
              <br />
              QUANLY_ID:
              <asp:TextBox ID="QUANLY_IDTextBox" runat="server" Text='<%# Bind("QUANLY_ID") %>' />
              <br />
              SOLUONG:
              <asp:TextBox ID="SOLUONGTextBox" runat="server" Text='<%# Bind("SOLUONG") %>' />
              <br />
              TENKHACHHANG:
              <asp:TextBox ID="TENKHACHHANGTextBox" runat="server" Text='<%# Bind("TENKHACHHANG") %>' />
              <br />
              DIACHI:
              <asp:TextBox ID="DIACHITextBox" runat="server" Text='<%# Bind("DIACHI") %>' />
              <br />
              NGAYMUA:
              <asp:TextBox ID="NGAYMUATextBox" runat="server" Text='<%# Bind("NGAYMUA") %>' />
              <br />
              DIACHINGUOIMUA:
              <asp:TextBox ID="DIACHINGUOIMUATextBox" runat="server" Text='<%# Bind("DIACHINGUOIMUA") %>' />
              <br />
              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          </InsertItemTemplate>
          <ItemTemplate>
              
              
              &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
          </ItemTemplate>
      </asp:FormView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BAN_HANG_HOAConnectionString1 %>" DeleteCommand="DELETE FROM [HOA_DON] WHERE [HOADON_ID] = @original_HOADON_ID AND [KHACHANG_ID] = @original_KHACHANG_ID AND [QUANLY_ID] = @original_QUANLY_ID AND [SOLUONG] = @original_SOLUONG AND [TENKHACHHANG] = @original_TENKHACHHANG AND [DIACHI] = @original_DIACHI AND (([NGAYMUA] = @original_NGAYMUA) OR ([NGAYMUA] IS NULL AND @original_NGAYMUA IS NULL)) AND [DIACHINGUOIMUA] = @original_DIACHINGUOIMUA" InsertCommand="INSERT INTO [HOA_DON] ([HOADON_ID], [KHACHANG_ID], [QUANLY_ID], [SOLUONG], [TENKHACHHANG], [DIACHI], [NGAYMUA], [DIACHINGUOIMUA]) VALUES (@HOADON_ID, @KHACHANG_ID, @QUANLY_ID, @SOLUONG, @TENKHACHHANG, @DIACHI, @NGAYMUA, @DIACHINGUOIMUA)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [HOADON_ID], [KHACHANG_ID], [QUANLY_ID], [SOLUONG], [TENKHACHHANG], [DIACHI], [NGAYMUA], [DIACHINGUOIMUA] FROM [HOA_DON]" UpdateCommand="UPDATE [HOA_DON] SET [KHACHANG_ID] = @KHACHANG_ID, [QUANLY_ID] = @QUANLY_ID, [SOLUONG] = @SOLUONG, [TENKHACHHANG] = @TENKHACHHANG, [DIACHI] = @DIACHI, [NGAYMUA] = @NGAYMUA, [DIACHINGUOIMUA] = @DIACHINGUOIMUA WHERE [HOADON_ID] = @original_HOADON_ID AND [KHACHANG_ID] = @original_KHACHANG_ID AND [QUANLY_ID] = @original_QUANLY_ID AND [SOLUONG] = @original_SOLUONG AND [TENKHACHHANG] = @original_TENKHACHHANG AND [DIACHI] = @original_DIACHI AND (([NGAYMUA] = @original_NGAYMUA) OR ([NGAYMUA] IS NULL AND @original_NGAYMUA IS NULL)) AND [DIACHINGUOIMUA] = @original_DIACHINGUOIMUA">
          <DeleteParameters>
              <asp:Parameter Name="original_HOADON_ID" Type="Int32" />
              <asp:Parameter Name="original_KHACHANG_ID" Type="Int32" />
              <asp:Parameter Name="original_QUANLY_ID" Type="Int32" />
              <asp:Parameter Name="original_SOLUONG" Type="Decimal" />
              <asp:Parameter Name="original_TENKHACHHANG" Type="String" />
              <asp:Parameter Name="original_DIACHI" Type="String" />
              <asp:Parameter Name="original_NGAYMUA" Type="DateTime" />
              <asp:Parameter Name="original_DIACHINGUOIMUA" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="HOADON_ID" Type="Int32" />
              <asp:Parameter Name="KHACHANG_ID" Type="Int32" />
              <asp:Parameter Name="QUANLY_ID" Type="Int32" />
              <asp:Parameter Name="SOLUONG" Type="Decimal" />
              <asp:Parameter Name="TENKHACHHANG" Type="String" />
              <asp:Parameter Name="DIACHI" Type="String" />
              <asp:Parameter Name="NGAYMUA" Type="DateTime" />
              <asp:Parameter Name="DIACHINGUOIMUA" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="KHACHANG_ID" Type="Int32" />
              <asp:Parameter Name="QUANLY_ID" Type="Int32" />
              <asp:Parameter Name="SOLUONG" Type="Decimal" />
              <asp:Parameter Name="TENKHACHHANG" Type="String" />
              <asp:Parameter Name="DIACHI" Type="String" />
              <asp:Parameter Name="NGAYMUA" Type="DateTime" />
              <asp:Parameter Name="DIACHINGUOIMUA" Type="String" />
              <asp:Parameter Name="original_HOADON_ID" Type="Int32" />
              <asp:Parameter Name="original_KHACHANG_ID" Type="Int32" />
              <asp:Parameter Name="original_QUANLY_ID" Type="Int32" />
              <asp:Parameter Name="original_SOLUONG" Type="Decimal" />
              <asp:Parameter Name="original_TENKHACHHANG" Type="String" />
              <asp:Parameter Name="original_DIACHI" Type="String" />
              <asp:Parameter Name="original_NGAYMUA" Type="DateTime" />
              <asp:Parameter Name="original_DIACHINGUOIMUA" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="HOADON_ID" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
          <Columns>
              <asp:BoundField DataField="HOADON_ID" HeaderText="HÓA ĐƠN" ReadOnly="True" SortExpression="HOADON_ID" />
              <asp:BoundField DataField="KHACHANG_ID" HeaderText="KHÁCH HÀNG ID" SortExpression="KHACHANG_ID" />
              <asp:BoundField DataField="QUANLY_ID" HeaderText="QUẢN LÝ ID" SortExpression="QUANLY_ID" />
              <asp:BoundField DataField="SOLUONG" HeaderText="SỐ LƯỢNG" SortExpression="SOLUONG" />
              <asp:BoundField DataField="TENKHACHHANG" HeaderText="TÊN KHÁCH HÀNG" SortExpression="TENKHACHHANG" />
              <asp:BoundField DataField="DIACHI" HeaderText="ĐỊA CHỈ" SortExpression="DIACHI" />
              <asp:BoundField DataField="NGAYMUA" HeaderText="NGÀY MUA" SortExpression="NGAYMUA" />
              <asp:BoundField DataField="DIACHINGUOIMUA" HeaderText="ĐỊA CHỈ NGƯỜI MUA" SortExpression="DIACHINGUOIMUA" />
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
