<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ReservationForm.ascx.cs" Inherits="Web.Control.nmn.ReservationForm" %>
<!-- Reservation Start -->
<%--<div class="container-fluid my-5">
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
                             
                                <asp:TextBox ID="rName" runat="server" class="form-control bg-transparent border-primary p-4" placeholder="Tên của bạn (*)" required="required" />
                            </div>
                            <div class="form-group">
                            
                                <asp:TextBox ID="rEmail" runat="server" class="form-control bg-transparent border-primary p-4" placeholder="Email (*)" required="required" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="rEmail"
                                    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" ErrorMessage="Email sai định dạng" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="rEmail"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Bạn chưa nhập email" />
                                <br />
                            </div>
                            <div class="form-group">
                          
                                <asp:TextBox ID="rPhone" runat="server" class="form-control bg-transparent border-primary p-4" placeholder="Số điện thoại (*)" required="required" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="rPhone"
                                    ForeColor="Red" ValidationExpression="(84|0[3|5|7|8|9])+([0-9]{8})\b"
                                    Display="Dynamic" ErrorMessage="Số điện thoại sai định dạng" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="rPhone"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Bạn chưa nhập số điện thoại" />
                            </div>
                            <div class="form-group">
                         
                                <asp:TextBox ID="rContent" runat="server" class="form-control bg-transparent border-primary p-4" TextMode="MultiLine" Rows="4" placeholder="Nhập nội dung (*)" required="required" />
                            </div>
                            <div>
                               
                                <asp:Button ID="btnSubmitReservation" class="btn btn-primary btn-block font-weight-bold py-3" Text="Gửi yêu cầu" runat="server" OnClick="btnSubmitReservation_Click" />
                            </div>
                            <div class="form-group">
                               
                                <asp:Literal ID="lblResultReservation" runat="server" />
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>--%>


<div class="contact_home">
    <div>
        <div class="inner">
            <div class="maps">
                <%--<iframe data-lazyloaded="1" src="App_Themes/house/img/embed.html" data-src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d477025.01140348776!2d105.03252617422083!3d20.922057694872876!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab2e2881d2b7%3A0x827a4e784e5a3430!2zTuG7mWkgdGjhuqV0IELhuq9jIMOCdSAtIE5PUkRJQw!5e0!3m2!1svi!2s!4v1660706734086!5m2!1svi!2s" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade" data-ll-status="loaded" class="entered litespeed-loaded"></iframe>--%>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.7373199253925!2d105.81335937587882!3d20.963061490030565!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad1d40403a31%3A0xa24dec434c68bced!2zMTQgTmfDtSA4MTYgxJDGsOG7nW5nIEtpbSBHaWFuZywgVGhhbmggTGnhu4d0LCBUaGFuaCBUcsOsLCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1682053104686!5m2!1svi!2s" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="form">
                <div class="wpcf7 js" id="wpcf7-f5-o1" lang="vi" dir="ltr">
                    <div class="screen-reader-response">
                        <p role="status" aria-live="polite" aria-atomic="true"></p>
                        <ul></ul>
                    </div>
                  <%--  <form runat="server" class="" aria-label="Form liên hệ">--%>
                         <form class="mb-5" runat="server">
                        <div class="form-title">
                            Liên hệ với chúng tôi
                        </div>
                        <div class="form-group">
                            <span class="wpcf7-form-control-wrap" data-name="text-948">
                                <%--<input size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required input" aria-required="true" aria-invalid="false" placeholder="Họ và tên" value="" type="text" name="text-948">--%>
                                <asp:TextBox ID="rName" runat="server" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required input" placeholder="Tên của bạn (*)" required="required" />
                            </span>
                        </div>
                        <div class="form-group">
                            <span class="wpcf7-form-control-wrap" data-name="email-460">
                                <%--<input size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email input" aria-required="true" aria-invalid="false" placeholder="Email" value="" type="email" name="email-460">--%>
                                <asp:TextBox ID="rEmail" runat="server" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email input" placeholder="Email (*)" required="required" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="rEmail"
                                    ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"
                                    Display="Dynamic" ErrorMessage="Email sai định dạng" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="rEmail"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Bạn chưa nhập email" />

                            </span>
                        </div>
                        <div class="form-group">
                            <span class="wpcf7-form-control-wrap" data-name="number-647">
                                <%-- <input class="wpcf7-form-control wpcf7-number wpcf7-validates-as-required wpcf7-validates-as-number input" aria-required="true" aria-invalid="false" placeholder="Số điện thoại" value="" type="number" name="number-647">--%>
                                <asp:TextBox ID="rPhone" runat="server" class="wpcf7-form-control wpcf7-number wpcf7-validates-as-required wpcf7-validates-as-number input" placeholder="Số điện thoại (*)" required="required" />
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="rPhone"
                                    ForeColor="Red" ValidationExpression="(84|0[3|5|7|8|9])+([0-9]{8})\b"
                                    Display="Dynamic" ErrorMessage="Số điện thoại sai định dạng" />
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="rPhone"
                                    ForeColor="Red" Display="Dynamic" ErrorMessage="Bạn chưa nhập số điện thoại" />

                            </span>
                        </div>
                        <div class="form-group">
                            <span class="wpcf7-form-control-wrap" data-name="textarea-413">
                                <%-- <textarea cols="40" rows="4" class="wpcf7-form-control wpcf7-textarea input" aria-invalid="false" placeholder="Lời nhắn" name="textarea-413"></textarea>--%>
                                <asp:TextBox ID="rContent" runat="server" class="wpcf7-form-control wpcf7-textarea input" TextMode="MultiLine" Rows="4" placeholder="Nhập nội dung (*)" required="required" />
                            </span>
                        </div>
                        <div class="form-button">
                            <%-- <input class="wpcf7-form-control has-spinner wpcf7-submit input" type="submit" value="Đăng ký ngay"><span class="wpcf7-spinner"></span>--%>
                            <asp:Button ID="btnSubmitReservation" class="btn btn-primary btn-block font-weight-bold py-3" Text="Gửi yêu cầu" runat="server" OnClick="btnSubmitReservation_Click" />
                        </div>
                        <div class="form-group">
                            <%--<textarea rows="4" class="form-control bg-transparent border-primary p-4" name="text" placeholder="Enter text"></textarea>--%>
                            <asp:Literal ID="lblResultReservation" runat="server" />
                        </div>
                        <%--<div class="wpcf7-response-output" aria-hidden="true"></div>--%>
                    </form>
                </div>
            </div>


        </div>
    </div>
</div>
<!-- Reservation End -->


