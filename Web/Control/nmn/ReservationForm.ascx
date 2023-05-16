<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ReservationForm.ascx.cs" Inherits="Web.Control.nmn.ReservationForm" %>
<div class="contact_home">
    <div class="container-fluid">
        <div class="inner">
            <div class="maps">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3725.6062983947727!2d105.81708787586659!3d20.96831998066597!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ad1add547871%3A0xc14e7e10ed1e4a5c!2zQ8O0bmcgdHkgVE5ISCBraeG6v24gdHLDumMgdsOgIG7hu5lpIHRo4bqldCB0aMO0bmcgbWluaCBBUkJBUk8!5e0!3m2!1svi!2s!4v1683790813698!5m2!1svi!2s" width="600" height="450" style="border: 0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
            <div class="form">
                <div>
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
                            <asp:Button ID="btnSubmitContact" class="btn btn-primary btn-block font-weight-bold py-3" Text="Gửi yêu cầu" runat="server" OnClick="btnSubmitContact_Click" />
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


