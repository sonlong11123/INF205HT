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
      <h2 class="noDisplay">Index</h2>
      <br />
      <asp:FormView ID="FormView1" runat="server" DataKeyNames="HANGHOA_ID" DataSourceID="SqlDataSource1">
          <InsertItemTemplate>
              HANGHOA_ID:
              <asp:TextBox ID="HANGHOA_IDTextBox" runat="server" Text='<%# Bind("HANGHOA_ID") %>' />
              <br />
              LOAI_ID:
              <asp:TextBox ID="LOAI_IDTextBox" runat="server" Text='<%# Bind("LOAI_ID") %>' />
              <br />
              HANGSANXUAT_ID:
              <asp:TextBox ID="HANGSANXUAT_IDTextBox" runat="server" Text='<%# Bind("HANGSANXUAT_ID") %>' />
              <br />
              MASANPHAM:
              <asp:TextBox ID="MASANPHAMTextBox" runat="server" Text='<%# Bind("MASANPHAM") %>' />
              <br />
              TEN:
              <asp:TextBox ID="TENTextBox" runat="server" Text='<%# Bind("TEN") %>' />
              <br />
              GIASANPHAM:
              <asp:TextBox ID="GIASANPHAMTextBox" runat="server" Text='<%# Bind("GIASANPHAM") %>' />
              <br />
              SOLUONG:
              <asp:TextBox ID="SOLUONGTextBox" runat="server" Text='<%# Bind("SOLUONG") %>' />
              <br />
              KHOILUONG:
              <asp:TextBox ID="KHOILUONGTextBox" runat="server" Text='<%# Bind("KHOILUONG") %>' />
              <br />
              MOTA:
              <asp:TextBox ID="MOTATextBox" runat="server" Text='<%# Bind("MOTA") %>' />
              <br />
              ANHSANPHAM:
              <asp:TextBox ID="ANHSANPHAMTextBox" runat="server" Text='<%# Bind("ANHSANPHAM") %>' />
              <br />
              NGAYNHAP:
              <asp:TextBox ID="NGAYNHAPTextBox" runat="server" Text='<%# Bind("NGAYNHAP") %>' />
              <br />
              NGAYXUAT:
              <asp:TextBox ID="NGAYXUATTextBox" runat="server" Text='<%# Bind("NGAYXUAT") %>' />
              <br />
              VITRI:
              <asp:TextBox ID="VITRITextBox" runat="server" Text='<%# Bind("VITRI") %>' />
              <br />
              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
          </InsertItemTemplate>
          <ItemTemplate>
              <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
          </ItemTemplate>
      </asp:FormView>
      <br />
      <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="HANGHOA_ID" DataSourceID="SqlDataSource1" GridLines="Vertical">
          <AlternatingRowStyle BackColor="#DCDCDC" />
          <Columns>
              <asp:ImageField DataImageUrlField="ANHSANPHAM" HeaderText="ẢNH" ControlStyle-Width="60px" />
              <asp:BoundField DataField="HANGHOA_ID" HeaderText="HÀNG HÓA ID" ReadOnly="True" SortExpression="HANGHOA_ID" />
              <asp:BoundField DataField="LOAI_ID" HeaderText="LOẠI ID" SortExpression="LOAI_ID" />
              <asp:BoundField DataField="HANGSANXUAT_ID" HeaderText="HÃNG SẢN XUẤT ID" SortExpression="HANGSANXUAT_ID" />
              <asp:BoundField DataField="MASANPHAM" HeaderText="MÃ SẢN PHẨM" SortExpression="MASANPHAM" />
              <asp:BoundField DataField="TEN" HeaderText="TÊN" SortExpression="TEN" />
              <asp:BoundField DataField="GIASANPHAM" HeaderText="GIÁ TIỀN" SortExpression="GIASANPHAM" />
              <asp:BoundField DataField="SOLUONG" HeaderText="SỐ LƯỢNG" SortExpression="SOLUONG" />
              <asp:BoundField DataField="KHOILUONG" HeaderText="KHỐI LƯỢNG" SortExpression="KHOILUONG" />
              <asp:BoundField DataField="MOTA" HeaderText="MÔ TẢ" SortExpression="MOTA" />
              <asp:BoundField DataField="NGAYNHAP" HeaderText="NGÀY NHẬP" SortExpression="NGAYNHAP" />
              <asp:BoundField DataField="NGAYXUAT" HeaderText="NGÀY XUẤT" SortExpression="NGAYXUAT" />
              <asp:BoundField DataField="VITRI" HeaderText="VỊ TRÍ" SortExpression="VITRI" />
              <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" InsertVisible="true" />
          </Columns>
          <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
          <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
          <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
          <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
          <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
          <SortedAscendingCellStyle BackColor="#F1F1F1" />
          <SortedAscendingHeaderStyle BackColor="#0000A9" />
          <SortedDescendingCellStyle BackColor="#CAC9C9" />
          <SortedDescendingHeaderStyle BackColor="#000065" />
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BAN_HANG_HOAConnectionString1 %>" DeleteCommand="DELETE FROM [HANG_HOA] WHERE [HANGHOA_ID] = @original_HANGHOA_ID AND [LOAI_ID] = @original_LOAI_ID AND [HANGSANXUAT_ID] = @original_HANGSANXUAT_ID AND [MASANPHAM] = @original_MASANPHAM AND [TEN] = @original_TEN AND [GIASANPHAM] = @original_GIASANPHAM AND [SOLUONG] = @original_SOLUONG AND [KHOILUONG] = @original_KHOILUONG AND [MOTA] = @original_MOTA AND [ANHSANPHAM] = @original_ANHSANPHAM AND (([NGAYNHAP] = @original_NGAYNHAP) OR ([NGAYNHAP] IS NULL AND @original_NGAYNHAP IS NULL)) AND (([NGAYXUAT] = @original_NGAYXUAT) OR ([NGAYXUAT] IS NULL AND @original_NGAYXUAT IS NULL)) AND [VITRI] = @original_VITRI" InsertCommand="INSERT INTO [HANG_HOA] ([HANGHOA_ID], [LOAI_ID], [HANGSANXUAT_ID], [MASANPHAM], [TEN], [GIASANPHAM], [SOLUONG], [KHOILUONG], [MOTA], [ANHSANPHAM], [NGAYNHAP], [NGAYXUAT], [VITRI]) VALUES (@HANGHOA_ID, @LOAI_ID, @HANGSANXUAT_ID, @MASANPHAM, @TEN, @GIASANPHAM, @SOLUONG, @KHOILUONG, @MOTA, @ANHSANPHAM, @NGAYNHAP, @NGAYXUAT, @VITRI)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [HANGHOA_ID], [LOAI_ID], [HANGSANXUAT_ID], [MASANPHAM], [TEN], [GIASANPHAM], [SOLUONG], [KHOILUONG], [MOTA], [ANHSANPHAM], [NGAYNHAP], [NGAYXUAT], [VITRI] FROM [HANG_HOA]" UpdateCommand="UPDATE [HANG_HOA] SET [LOAI_ID] = @LOAI_ID, [HANGSANXUAT_ID] = @HANGSANXUAT_ID, [MASANPHAM] = @MASANPHAM, [TEN] = @TEN, [GIASANPHAM] = @GIASANPHAM, [SOLUONG] = @SOLUONG, [KHOILUONG] = @KHOILUONG, [MOTA] = @MOTA, [ANHSANPHAM] = @ANHSANPHAM, [NGAYNHAP] = @NGAYNHAP, [NGAYXUAT] = @NGAYXUAT, [VITRI] = @VITRI WHERE [HANGHOA_ID] = @original_HANGHOA_ID AND [LOAI_ID] = @original_LOAI_ID AND [HANGSANXUAT_ID] = @original_HANGSANXUAT_ID AND [MASANPHAM] = @original_MASANPHAM AND [TEN] = @original_TEN AND [GIASANPHAM] = @original_GIASANPHAM AND [SOLUONG] = @original_SOLUONG AND [KHOILUONG] = @original_KHOILUONG AND [MOTA] = @original_MOTA AND [ANHSANPHAM] = @original_ANHSANPHAM AND (([NGAYNHAP] = @original_NGAYNHAP) OR ([NGAYNHAP] IS NULL AND @original_NGAYNHAP IS NULL)) AND (([NGAYXUAT] = @original_NGAYXUAT) OR ([NGAYXUAT] IS NULL AND @original_NGAYXUAT IS NULL)) AND [VITRI] = @original_VITRI">
          <DeleteParameters>
              <asp:Parameter Name="original_HANGHOA_ID" Type="Int32" />
              <asp:Parameter Name="original_LOAI_ID" Type="Int32" />
              <asp:Parameter Name="original_HANGSANXUAT_ID" Type="Int32" />
              <asp:Parameter Name="original_MASANPHAM" Type="String" />
              <asp:Parameter Name="original_TEN" Type="String" />
              <asp:Parameter Name="original_GIASANPHAM" Type="Decimal" />
              <asp:Parameter Name="original_SOLUONG" Type="Decimal" />
              <asp:Parameter Name="original_KHOILUONG" Type="Decimal" />
              <asp:Parameter Name="original_MOTA" Type="String" />
              <asp:Parameter Name="original_ANHSANPHAM" Type="String" />
              <asp:Parameter Name="original_NGAYNHAP" Type="DateTime" />
              <asp:Parameter Name="original_NGAYXUAT" Type="DateTime" />
              <asp:Parameter Name="original_VITRI" Type="String" />
          </DeleteParameters>
          <InsertParameters>
              <asp:Parameter Name="HANGHOA_ID" Type="Int32" />
              <asp:Parameter Name="LOAI_ID" Type="Int32" />
              <asp:Parameter Name="HANGSANXUAT_ID" Type="Int32" />
              <asp:Parameter Name="MASANPHAM" Type="String" />
              <asp:Parameter Name="TEN" Type="String" />
              <asp:Parameter Name="GIASANPHAM" Type="Decimal" />
              <asp:Parameter Name="SOLUONG" Type="Decimal" />
              <asp:Parameter Name="KHOILUONG" Type="Decimal" />
              <asp:Parameter Name="MOTA" Type="String" />
              <asp:Parameter Name="ANHSANPHAM" Type="String" />
              <asp:Parameter Name="NGAYNHAP" Type="DateTime" />
              <asp:Parameter Name="NGAYXUAT" Type="DateTime" />
              <asp:Parameter Name="VITRI" Type="String" />
          </InsertParameters>
          <UpdateParameters>
              <asp:Parameter Name="LOAI_ID" Type="Int32" />
              <asp:Parameter Name="HANGSANXUAT_ID" Type="Int32" />
              <asp:Parameter Name="MASANPHAM" Type="String" />
              <asp:Parameter Name="TEN" Type="String" />
              <asp:Parameter Name="GIASANPHAM" Type="Decimal" />
              <asp:Parameter Name="SOLUONG" Type="Decimal" />
              <asp:Parameter Name="KHOILUONG" Type="Decimal" />
              <asp:Parameter Name="MOTA" Type="String" />
              <asp:Parameter Name="ANHSANPHAM" Type="String" />
              <asp:Parameter Name="NGAYNHAP" Type="DateTime" />
              <asp:Parameter Name="NGAYXUAT" Type="DateTime" />
              <asp:Parameter Name="VITRI" Type="String" />
              <asp:Parameter Name="original_HANGHOA_ID" Type="Int32" />
              <asp:Parameter Name="original_LOAI_ID" Type="Int32" />
              <asp:Parameter Name="original_HANGSANXUAT_ID" Type="Int32" />
              <asp:Parameter Name="original_MASANPHAM" Type="String" />
              <asp:Parameter Name="original_TEN" Type="String" />
              <asp:Parameter Name="original_GIASANPHAM" Type="Decimal" />
              <asp:Parameter Name="original_SOLUONG" Type="Decimal" />
              <asp:Parameter Name="original_KHOILUONG" Type="Decimal" />
              <asp:Parameter Name="original_MOTA" Type="String" />
              <asp:Parameter Name="original_ANHSANPHAM" Type="String" />
              <asp:Parameter Name="original_NGAYNHAP" Type="DateTime" />
              <asp:Parameter Name="original_NGAYXUAT" Type="DateTime" />
              <asp:Parameter Name="original_VITRI" Type="String" />
          </UpdateParameters>
      </asp:SqlDataSource>
      
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
