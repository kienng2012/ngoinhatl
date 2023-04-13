<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ReservationForm.ascx.cs" Inherits="Web.Control.nmn.ReservationForm" %>
<!-- Reservation Start -->
<div class="container-fluid my-5">
    <div class="container">
        <div class="reservation position-relative overlay-top overlay-bottom">
            <div class="row align-items-center">
                <div class="col-lg-6 my-5 my-lg-0">
                    <div class="p-5">
                        <div class="mb-4">
                            <h1 class="text-white">Công ty CP Thương Mại Dược Phẩm Quốc Anh</h1>
                        </div>
                        <p class="text-white">
                            Đơn vị nhập khẩu và phân phối độc quyền sản phẩm NMN25600+ tại Việt Nam
                        </p>
                        <ul class="list-inline text-white m-0">
                            <li class="py-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Địa chỉ: Số 186 đường Khương Đình, Phường Hạ Đình, Quận Thanh Xuân, Hà Nội</li>
                            <li class="py-2"><i class="fa fa-phone-alt text-primary mr-3"></i>Điện thoại: 0904612367</li>
                            <li class="py-2"><i class="fa fa-envelope text-primary mr-3"></i>Email: info@nmnchinhhang.vn</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="text-center p-5" style="background: rgba(51, 33, 29, .8);">
                        <h1 class="text-white mb-4 mt-5">ĐẶT LỊCH HẸN</h1>
                        <form class="mb-5" runat="server">
                            <div class="form-group">
                                <%-- <input type="text" class="form-control bg-transparent border-primary p-4" placeholder="Tên của bạn"
                                        required="required" />--%>
                                <asp:TextBox ID="rName" runat="server" class="form-control bg-transparent border-primary p-4" placeholder="Tên của bạn (*)" required="required" />
                            </div>
                            <div class="form-group">
                                <%-- <input type="email" class="form-control bg-transparent border-primary p-4" placeholder="Email (*)" required="required" />--%>
                                <asp:TextBox ID="rEmail" runat="server" class="form-control bg-transparent border-primary p-4" placeholder="Email (*)" required="required" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="rEmail"
                                    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" ErrorMessage="Email sai định dạng" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rEmail"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Bạn chưa nhập email" />
                                <br />
                            </div>
                            <div class="form-group">
                                <%--<input type="text" class="form-control bg-transparent border-primary p-4" placeholder="Số điện thoại (*)" required="required" />--%>
                                <asp:TextBox ID="rPhone" runat="server" class="form-control bg-transparent border-primary p-4" placeholder="Số điện thoại (*)" required="required" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="rPhone"
                                    ForeColor="Red" ValidationExpression="(84|0[3|5|7|8|9])+([0-9]{8})\b"
                                    Display="Dynamic" ErrorMessage="Số điện thoại sai định dạng" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rPhone"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Bạn chưa nhập số điện thoại" />
                            </div>
                            <div class="form-group">
                                <%--<textarea rows="4" class="form-control bg-transparent border-primary p-4" name="text" placeholder="Enter text"></textarea>--%>
                                <asp:TextBox ID="rContent" runat="server" class="form-control bg-transparent border-primary p-4" TextMode="MultiLine" Rows="4" placeholder="Nhập nội dung (*)" required="required" />
                            </div>
                            <div>
                                <%--<button class="btn btn-primary btn-block font-weight-bold py-3" type="submit">Book Now</button>--%>
                                <asp:Button ID="btnSubmitReservation" class="btn btn-primary btn-block font-weight-bold py-3" Text="Gửi yêu cầu" runat="server" OnClick="btnSubmitReservation_Click" />
                            </div>
                            <div class="form-group">
                                <%--<textarea rows="4" class="form-control bg-transparent border-primary p-4" name="text" placeholder="Enter text"></textarea>--%>
                                <asp:Literal ID="lblResultReservation" runat="server" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>



</div>
<!-- Reservation End -->


