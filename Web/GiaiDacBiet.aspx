<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GiaiDacBiet.aspx.cs" Inherits="Web.GiaiDacBiet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script>
        var myInterval;

        function beginQuayThuong() {
            if (document.getElementById("btQuay").value == 'START') {
                document.querySelector('#btQuay').value = 'STOP';
                myInterval = setInterval(myTimer, 20); //Thiet lap toc do quay cua so . cang nho cang nhanh
            }
            else if (document.getElementById("btQuay").value == 'STOP') {
                /*  alert('Dung lai day thoi ^-^');*/
                document.querySelector('#btQuay').value = 'END';
                /*  clearInterval(myInterval);*/
                /*document.getElementById("btQuay").disabled = true; //Disable click*/
                var dataValue = { "to": "84967891610" };
                $.ajax({
                    /* type: "POST",*/
                    /*url: "https://api.mobilebranding.vn/api/SMSBrandname/SendSMS",*/
                    type: "GET",
                    url: "/api/quaythuong/",
                    data: dataValue,
                    contentType: 'application/json; charset=utf-8',
                    dataType: 'json',
                    error: function (XMLHttpRequest, textStatus, errorThrown) {
                        clearInterval(myInterval);
                        alert("Request: " + XMLHttpRequest.toString() + "\n\nStatus: " + textStatus + "\n\nError: " + errorThrown);
                    },
                    success: function (result) {
                        //alert("We returned: " + result);
                        clearInterval(myInterval);
                        var parsedData = JSON.parse(result);
                        document.getElementById("random_number").innerHTML = parsedData.giainhat;
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
              var t = Math.round(Math.random() * (100000000000 - 1) + 1); //Thiet lap xem max bao nhieu so hien thi ngau nhien
            //var t = Math.round(Math.random() * (100) + 1);
       /*     var t = Math.floor(Math.random() * 100) + 1*/
            document.getElementById("random_number").innerHTML = t;
        }


    </script>
</head>
<body>


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

                                <%--<div style="text-align:center; max-height:100em; max-width:100em; background-color:bisque">
                                        <div class="frm-group" style=" padding-top: 4%; font-weight: bold; background-color: #00ff80; color: red; height: 100%; font-size: 65px; margin-top: 15px; padding: 0px; border:dotted" id="random_number"></div>
                               </div>--%>
                                <div style="margin:auto;text-align:center; max-height:100em; max-width:25em; background-color:#00ff80;border:dotted;border-color:RED">
                                    <div class="frm-group" style=" font-weight: bold;  color: red; font-size: 65px;" id="random_number">&nbsp</div>
                                    
                               </div>
                           
                              <div style="margin:auto;text-align:center;margin-top: 10px"><div class="frm-group"><input id="btQuay" type="button" onclick="beginQuayThuong()" value="START" /></div>
                              </div>
                                <div class="frm-group" style="display: none">
                                    <!--<div class="alert alert-success text-center hide" role="alert" id="loadingnha" style="font-weight: bold; background-color: #ffffff; border-color: #333; color: red;">
                                       Bấm nút quay để bắt đầu


                                       </div>-->
                                </div>

                            </form>
                            <strong style="display: none"><span id="true-random-integer-generator-result">Bấm nút quay để bắt đầu</span></strong>
                        </div>
                    </div>
                </div>
            </section>
        </div>

    </div>
</html>
