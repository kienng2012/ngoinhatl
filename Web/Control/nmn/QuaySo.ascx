<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="QuaySo.ascx.cs" Inherits="Web.Control.nmn.QuaySo" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>




    var myInterval;

    function beginQuayThuong() {
        if (document.getElementById("btQuay").value == 'START') {
            document.querySelector('#btQuay').value = 'STOP';
            myInterval = setInterval(myTimer, 75);
        }
        else if (document.getElementById("btQuay").value == 'STOP') {
            /*  alert('Dung lai day thoi ^-^');*/
            document.querySelector('#btQuay').value = 'END';
            clearInterval(myInterval);
            /*document.getElementById("btQuay").disabled = true; //Disable click*/

            $.ajax({
                type: "POST",
                url: "/Index.aspx?page=QuaySo/OnSubmit",
                data: dataValue,
                contentType: 'application/json; charset=utf-8',
                dataType: 'json',
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                },
                success: function (result) {
                    alert("We returned: " + result);
                }
            });


        }
        else {
            //alert('BẠN ĐÃ QUAY XONG. VUI LÒNG LOAD LẠI TRANG, hoặc click vào đây ^-^');
            document.querySelector('#btQuay').value = 'START';
        }

        ////alert('Bat dau nhe ^-^ ');
        //if (document.getElementById("btQuay").value == 'START') {
        //    document.querySelector('#btQuay').value = 'STOP';
        //   /* alert('Quay nao ^-^ ');*/
        //    const  myInterval = setInterval(myTimer, 50);
        //}
        //else if (document.getElementById("btQuay").value == 'STOP') {
        //    alert('Dung lai day thoi ^-^');
        //    document.querySelector('#btQuay').value = 'END';
        //    clearInterval(myInterval);
        //}
        //else {
        //    alert('BẠN ĐÃ QUAY XONG. VUI LÒNG LOAD LẠI TRANG, hoặc click vào đây ^-^');
        //    document.querySelector('#btQuay').value = 'START';
        //}
    }

    //setInterval(function () {
    //    var t = Math.round(Math.random() * (1000 - 1) + 1);
    //    document.getElementById("random_number").innerHTML = t;
    //}, 50);

    function myStopFunction() {
        clearInterval(myInterval);
    }

    function myTimer() {
        //const date = new Date();
        //document.getElementById("random_number").innerHTML = date.toLocaleTimeString();
        /*   var t = Math.round(Math.random() * (1000 - 1) + 1);*/
        var t = Math.round(Math.random() * (100) + 1);
        document.getElementById("random_number").innerHTML = t;
    }


</script>

<div id="content_about">
    <div class="about_sec1">
        <section id="quay" style="height: auto !important;">
            <div class="accordion cmn-accordion element-hungnh" id="accordionExample" style="height: auto !important;">
                <div class="select-number-area" style="height: auto !important;">
                    <h3 class="title">CHỌN SỐ NGẪU NHIÊN</h3>
                    <table>
                        <tbody>
                            <tr>
                                <td style="font-weight: bold;">
                                    <input type="radio" id="chk3O" checked="checked" onchange="Chon3O()">
                                    &nbsp; Chọn số
                                </td>
                                <td style="text-align: left; font-weight: bold;">
                                    <input type="radio" id="chk2O" onchange="Chon2O()">
                                    &nbsp; Nhập số</td>

                            </tr>
                        </tbody>
                    </table>
                    <div class="cmn-form login-form">
                        <div id="div2O" style="display: none; padding-top: 2%; padding-bottom: 2%">
                            <div class="frm-group">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td style="width: 80px;">Nhập vào: </td>
                                            <td>
                                                <textarea id="txtareadayso" placeholder="Các số cách nhau dấu phẩy. VD: 01,34,78,89,90" style="resize: none; font-size: 13.5px; width: 90%;"></textarea>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <div class="frm-group" style="padding-bottom: 6%">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td style="width: 23%">Tốc độ: </td>
                                            <td style="width: 20%">
                                                <select id="slTocDo2" style="padding: 1px 1px 1px 23px; height: 40px; width: 100%; border-radius: 6px;">
                                                    <option value="3">3</option>
                                                    <option value="5">5</option>
                                                    <option value="8">8</option>
                                                    <option value="10">10</option>
                                                    <option value="15">15</option>
                                                    <option value="20">20</option>
                                                </select>
                                            </td>
                                            <td>&nbsp;giây
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="frm-group" style="display: none">
                                <table>
                                    <tbody>
                                        <tr>
                                            <td style="width: 80px;">Số lượng: </td>
                                            <td>
                                                <input type="text" value="1" id="SoLuongToiDa2" placeholder="(Tối đa 100 số)" onkeypress="return integerJsInputControl(event);">
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <form runat="server">
                            <div id="dv3O">
                                <div class="frm-group" style="margin-top: 10px;">
                                    <table>
                                        <tbody>
                                            <tr>

                                                <td>Từ số:
                                                    <br>
                                                    <input type="text" value="1" id="true-random-integer-generator-min" placeholder="Số nhỏ nhất" onkeypress="return integerJsInputControl(event);" style="width: 115px;">
                                                </td>
                                                <td>Đến số:
                                                    <br>
                                                    <input type="text" value="100" id="true-random-integer-generator-max" placeholder="Số lớn nhất" onkeypress="return integerJsInputControl(event);" style="width: 115px;">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="frm-group">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td style="width: 115px;">Thời gian quay: </td>
                                                <td style="width: 30%">
                                                    <select id="slTocDo" style="padding: 1px 1px 1px 23px; height: 40px; width: 100%; border-radius: 6px;">
                                                        <option value="3">3</option>
                                                        <option value="5">5</option>
                                                        <option value="8">8</option>
                                                        <option value="10">10</option>
                                                        <option value="15">15</option>
                                                        <option value="20">20</option>
                                                    </select>
                                                </td>
                                                <td>&nbsp;giây
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <div class="frm-group" style="display: none">
                                    <table>
                                        <tbody>
                                            <tr>
                                                <td>Số lượng: </td>
                                                <td>
                                                    <input type="text" value="1" id="SoLuongToiDa" placeholder="(tối đa 100 số)" onkeypress="return integerJsInputControl(event);">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="frm-group" style="padding-top: 4%">
                                <a style="cursor: pointer; width: 100%; border-radius: 4px; color: white; background-image: -webkit-linear-gradient( 90deg, #2f2f2f 0%, #000000 100%, rgb(0 0 0) 100%);" class="cmn-btn" id="aQuay" onclick="quay()">Quay Số
                                </a>
                                <asp:Button ID="btnSubmit" runat="server" Text="QUAY THƯỞNG" />
                            </div>
                            <div class="frm-group" style="padding-top: 4%">
                                <a style="cursor: pointer; width: 100%; border-radius: 4px; color: white; background-image: -webkit-linear-gradient( 90deg, #2f2f2f 0%, #000000 100%, rgb(0 0 0) 100%);" class="cmn-btn" id="aQuay" onclick="quay()">Quay Số
                                </a>
                                <asp:Literal ID="lblResult" runat="server" />
                            </div>
                            <div class="frm-group" style="padding-top: 4%; font-weight: bold; background-color: #ffffff; color: red; height: 100%; font-size: 65px; margin-top: 15px; padding: 0px" id="random_number">
                            </div>
                            <div class="frm-group">
                                <input id="btQuay" type="button" onclick="beginQuayThuong()" value="START" />
                                <input type="button" onclick="clearInterval(inter)" value="STOP HERE" />
                            </div>
                            <div class="frm-group" style="display: none">
                                <!--<div class="alert alert-success text-center hide" role="alert" id="loadingnha" style="font-weight: bold; background-color: #ffffff; border-color: #333; color: red;">
                                       Bấm nút quay để bắt đầu


                                       </div>-->
                            </div>

                        </form>
                        <strong style="display: none"><span id="true-random-integer-generator-result">Bấm nút quay để bắt đầu</span></strong>
                    </div>

                    <div class="alert alert-success text-center hide" role="alert" id="loadingnha" style="font-weight: bold; background-color: #ffffff; color: red; height: 100%; font-size: 65px; margin-top: 15px; padding: 0px">04</div>


                    <div style="text-align: center">
                    </div>
                </div>
            </div>
        </section>
    </div>

</div>
