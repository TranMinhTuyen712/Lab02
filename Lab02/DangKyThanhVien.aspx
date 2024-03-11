<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThanhVien.aspx.cs" Inherits="Lab02  .DangKyThanhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/bootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="text-center">

            <h2 class="text-bg-warning">HỒ SƠ ĐĂNG KÝ</h2>
            </div>
            <div class="row border border-primary bg-nen1">
                <div class="col-md-8 p-2 text-center text-capitalize">
                  <h6 class="text-bg-danger">Thông Tin Đăng Ký</h6>  
                </div>
                <div class="col-md-4 pt-2 text-center border-left border-primary">
                   <h6 class="text-bg-info">Hồ Sơ Đăng Ký</h6> 
                </div>
            </div>



        
            <div class="row border border-primary">
                <div class="col-md-8">
                    <div class="row">
                       
                        <div class="col-md-3">
                            Tên đăng nhập
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtTenDN" runat="server" MaxLength ="20" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvTenDN"
                                ControlToValidate="txtTenDN" tetx="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Tên đăng nhập không được bỏ trống">
                            </asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rvTenDN"
                                ControlToValidate="txtTenDN" Text="(*)" Display="Dynamic"
                                CssClass="text-danger" ValidationExpression="[\w|\d|&|_|!]{8}[\w|\d|&|_|!]+"
                                runat="server" ErrorMessage="Tên đăng nhập không hợp lệ" />
                        </div>

                    </div>

                    <div class="row">
                        <div class="col-md-3">
                            Mật khẩu
                        </div>
                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtMatKhau" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvMatKhau"
                                ControlToValidate="txtTenDN" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Mật Khẩu không được bỏ trống"></asp:RequiredFieldValidator>
                        </div>
                    </div>
                    <div class="col-md-9">&nbsp;</div>

                    <div class="row">
                        <div class="col-md-3">
                            Nhập lại mật khẩu
                        </div>

                        <div class="col-md-9 form-inline">
                            <asp:TextBox ID="txtNhapLaiMatKhau" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvNhapLaiMatKhau"
                                ControlToValidate="txtNhapLaiMatKhau" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Mật Khẩu nhập lại không đc bỏ trống">
                            </asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="cvMatKhau"
                                runat="server" Text="*" Display="Dynamic"
                                CssClass="text-danger" ControlToValidate="txtNhapLaiMatKhau" ControlToCompare="txtMatKhau"
                                ErrorMessage="Mật khẩu nhập lại không được bỏ trống"></asp:CompareValidator>
                        </div>
                    </div>

                    <div class="col-md-9">&nbsp;</div>

                    <div class="row mb-2 bg-nen1">
                        <div class="col-md-12 text-center p-2">

                            <h3 class="text-bg-danger">Thông Tin Cá Nhân</h3>  
                        </div>
                    </div>

                    <div class="row mb-2">
                        <div class="col-md-3">
                            Họ Tên Khách Hàng
                        </div>
                        <div class="col-md-9">
                            <asp:TextBox ID="txtHoTen" runat="server" CssClass="form-control"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="rfvHoTen"
                                ControlToValidate="txtHoTen" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                runat="server" ErrorMessage="Chưa nhập họ tên" />
                        </div>

                    </div>
                    <div class="row mb-2">
                        <div class="col-md-3">
                            Ngày Sinh
                        </div>
                        <div class="col-md-9">
                            <div class="form-inline">
                                <asp:DropDownList ID="ddlNgay" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvNgay"
                                    ControlToValidate="ddlNgay" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                    runat="server" ErrorMessage="Thiếu Ngày" />
                                <asp:DropDownList ID="ddlThang" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvThang"
                                    ControlToValidate="ddlThang" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                    runat="server" ErrorMessage="Thiếu Tháng" />
                                <asp:DropDownList ID="ddlNam" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="rfvNam"
                                    ControlToValidate="ddlNam" Text="*" ForeColor="#ff0000" Display="Dynamic"
                                    runat="server" ErrorMessage="Thiếu Năm" />
                                <br />

                            </div>
                        </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-3">
                                Email
                            </div>
                            <div class="col-md-9 form-inline">
                                <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RegularExpressionValidator ID="revEmail"
                                    ControlToValidate="txtEmail" Text="(*)" Display="Dynamic"
                                    CssClass="text-danger" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                    runat="server" ErrorMessage="RegularExpressionValidator" />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-3">
                                Thu Nhập
                            </div>
                            <div class="col-md-9 form-inline">
                                <asp:TextBox ID="txtThuNhap" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RangeValidator ID="rfvThuNhap" Text="(*)" Display="Dynamic" CssClass="text-danger"
                                    ControlToValidate="txtThuNhap" MinimumValue="1000000" MaximumValue="50000000"
                                    runat="server" ErrorMessage="Thu Nhập hợp lệ [1-50] triệu" />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-3">
                                Giới Tính
                            </div>
                            <div class="col-md-9">
                                <asp:CheckBox ID="chkPhai" runat="server" Text="Nam" Checked="True" />
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-3">
                                Địa Chỉ
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="txtDiaChi" TextMode="MultiLine" Rows="4" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-3">
                                Điện Thoại
                            </div>
                            <div class="col-md-9">
                                <asp:TextBox ID="txtDienThoai" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row mb-2">
                            <div class="col-md-12 text-center">
                                <asp:Button ID="btDangKy" runat="server" Text="Đăng Ký" OnClick="btDangKy_Click" />
                            </div>
                        </div>
                    </div>




                    <div class="col-md-4">
                        <asp:Label ID="lbKetQua" runat="server" Text=""></asp:Label>
                        <asp:ValidationSummary ID="vsTongHopLoi" HeaderText="Danh Sách Lỗi: "
                            ShowSumary="true" ShowMessageBox="true"
                            CssClass="text-danger" runat="server" />
                    </div>
                
            </div>
        </div>
       
    </form>
</body>
</html>
