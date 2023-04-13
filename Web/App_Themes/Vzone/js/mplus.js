var DomainServer = "http://mplus.vn"; 

function DisplayOpacity(name, value, time) {
    var newvalue = parseFloat(value) + parseFloat($(name).css('opacity'));
    if (parseFloat(value) > 1) {
        $(name).css('opacity', '1'); 
    }
    else {
        $(name).css('opacity', newvalue);
        setTimeout("DisplayOpacity('" + name + "'," + value + "," + time + ")", time);
    }
}

function GroupCateClick(othis,iCurrent,Title,Content,iMax)
{
    for (var i = 1; i <= iMax; i++) {
        $('#' + Title + i).css('background-color', '');
        $('#' + Content + i).css('display', 'none');
    }
    $(othis).css('background-color', '#ff005a');
    $('#' + Content + iCurrent).css('display', 'block');
    $('#' + Content + iCurrent).css('opacity', '0');
    //setTimeout("DisplayOpacity('#" + Content + iCurrent + "',0.02,50)", 50);
    DisplayOpacity('#' + Content + iCurrent, 0.02, 50);
}

function CapcharRefresh(control) {
    $('#' + control).attr('src', DomainServer + '/img/indicator.gif');
    jQuery.ajax({
        type: "POST",
        data: "control=" + control, //tham số gửi kèm
        url: DomainServer + "/form/capchar.ashx",
        success: function(html) {
            var d = new Date();
            $('#' + control).attr('src', DomainServer + '/form/capchar.ashx?control=' + d.getHours() + ":" + d.getMinutes() + ":" + d.getSeconds());
        }
    });
}
// Replaces all instances of the given substring.
String.prototype.replaceAll = function(
strTarget, // The substring you want to replace
strSubString // The string you want to replace in.
) {
    var strText = this;
    var intIndexOfMatch = strText.indexOf(strTarget);

    // Keep looping while an instance of the target string
    // still exists in the string.
    while (intIndexOfMatch != -1) {
        // Relace out the current instance.
        strText = strText.replace(strTarget, strSubString)

        // Get the index of any next matching substring.
        intIndexOfMatch = strText.indexOf(strTarget);
    }

    // Return the updated string with ALL the target strings
    // replaced out with the new substring.
    return (strText);
}

function UrlEncode(s) {
    return encodeURIComponent(s.replace(/&amp;/g, '&')); //escape, encodeURI and encodeURIComponent
}
function UrlDecode(s) {
    return decodeURIComponent(s);
}

function AcceptAddFriend(friendid,accept) {
    jQuery.ajax({
        type: "POST",
        data: "id=" + friendid + "&active=" + accept, //tham số gửi kèm
        url: DomainServer + "/Community/accept.ashx",
        success: function(html) {
        }
    });
}
function OnKeypessCommentDetail(othis, evt, id,fid) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode == 13) {
        if (evt.shiftKey == 1) {
            return true;
        }
        if ($(othis).val().length > 0) {
            SendComment(id,1,fid,$(othis).val());
            $(othis).val('');
            return false;
        }
    }
    return true;
}

function OnKeypessSearchFriend(othis, evt, name, type) {
    var charCode = (evt.which) ? evt.which : evt.keyCode;
    if (charCode == 13) {
        if (evt.shiftKey == 1) {
            return true;
        }
        if ($(othis).val().length > 0) {
            SearchFriend(name, type);
            return false;
        }
    }
    return true;
}
function Login() {
    if (document.getElementById("tbx_User").value.length < 9) {
        alert("Bạn chưa nhập số điện thoại hoặc số điện thoại bạn điền không đúng");
        document.getElementById("tbx_User").focus();
        return false;
    }
    if (document.getElementById("tbx_Pass").value.length < 3) {
        alert("Bạn chưa nhập mật khẩu.");
        document.getElementById("tbx_Pass").focus();
        return false;
    }
    document.getElementById("f_login").submit();
}
function RegistryService(othis, type, serviceid,serviceopenid) {
    var day = 0;
    var month = 0;
    var year = 0;
    var flag = 0;
    if (document.getElementById('tbx_Ngay' + serviceid)) {
        flag++;
        if (document.getElementById('tbx_Ngay' + serviceid).value.length > 0 && parseInt(document.getElementById('tbx_Ngay' + serviceid).value) > 0) {
            day = parseInt(document.getElementById('tbx_Ngay' + serviceid).value);
            if (!(day > 31 || day < 1)){
                flag--;
            }
        }
    }
    if (document.getElementById('tbx_Thang' + serviceid)) {
        flag++;
        if (document.getElementById('tbx_Thang' + serviceid).value.length > 0 && parseInt(document.getElementById('tbx_Thang' + serviceid).value) > 0) {
            month = parseInt(document.getElementById('tbx_Thang' + serviceid).value);
            if (!(month > 12 || month < 1)) {
                flag--;
            }
            if (month % 2 == 1 && day == 31) {
                flag++;
            }
        }
    }
    if (document.getElementById('tbx_NamSinh' + serviceid)) {
        flag++;
        if (document.getElementById('tbx_NamSinh' + serviceid).value.length > 0 && parseInt(document.getElementById('tbx_NamSinh' + serviceid).value) > 0) {
            year = parseInt(document.getElementById('tbx_NamSinh' + serviceid).value);
            if (!(year > 9999 || year < 1900)) {
                flag--;
            }
        }
    }
    if (flag > 0) {
        alert("Bạn nhập chưa đủ hoặc chưa đúng thông tin trước khi nhấn đăng ký.");
        return false;
    } 
    $(othis).attr('onclick', 'void();');
    jQuery.ajax({
        type: "POST",
        data: "id=" + serviceid + "&openid="+serviceopenid+"&year=" + year + "&month=" + month + "&day=" + day, //tham số gửi kèm
        url: DomainServer + "/p/reg.ashx",
        timeout: 5000,
        error: function(request,error) {
            alert("Có lỗi trong quá trình gửi yêu cầu đăng ký.");
        },
        success: function(html) {
            if (parseInt(html) == 1) {
                alert("Yêu cầu của bạn đã được gửi thành công tới hệ thống");
            }
            else {
                alert("Yêu cầu đăng ký của bạn thực hiện không thành công");
            }
        }
    });
}

function isNumberKey_int(evt) {
    var charCode = (evt.which) ? evt.which : event.keyCode

    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;

    return true;
}
function ContactClear() {
    document.getElementById("tbx_FullName").value="";
    document.getElementById("tbx_Address").value="";
    document.getElementById("tbx_Phone").value="";
    document.getElementById("tbx_Enail").value="";
    document.getElementById("tbx_Title").value="";
    document.getElementById("tbx_Content").value="";
    document.getElementById("tbx_capchar").value = "";
    document.getElementById("chk_SendEmail").checked = true;
}
function ContactClik() {
    if (document.getElementById("tbx_FullName").value.length < 1) {
        alert("Bạn chưa nhập họ và tên.");
        document.getElementById("tbx_FullName").forcus();
        return false;
    }
    if (document.getElementById("tbx_Address").value.length < 1) {
        alert("Bạn chưa nhập địa chỉ.");
        document.getElementById("tbx_Address").forcus();
        return false;
    }
    if (document.getElementById("tbx_Phone").value.length < 1) {
        alert("Bạn chưa nhập số điện thoại");
        document.getElementById("tbx_Phone").forcus();
        return false;
    }
    if (document.getElementById("tbx_Enail").value.length < 1) {
        alert("Bạn chưa nhập Email");
        document.getElementById("tbx_Enail").forcus();
        return false;
    }
    if (document.getElementById("tbx_Title").value.length < 1) {
        alert("Bạn chưa nhập tiêu đề");
        document.getElementById("tbx_Title").forcus();
        return false;
    }
    if (document.getElementById("tbx_Content").value.length < 1) {
        alert("Bạn chưa nhập nội dung");
        document.getElementById("tbx_Content").forcus();
        return false;
    }
    if (document.getElementById("tbx_capchar").value.length < 1) {
        alert("Bạn chưa nhập mã bảo vệ");
        document.getElementById("tbx_capchar").forcus();
        return false;
    }
    document.getElementById("f_contact").submit();
}
function ShowDetail(ctr_This, service, serviceopen) {
    CallBack_CloseFaceBox = function() {
        window.location.href = window.location.href;
        CallBack_CloseFaceBox = function() { };
    };
    SaveScrollTopInCookie = true;
    ShowLoading(ctr_This, false, false);
    Show_FaceBoxIframe(DomainServer + '/p/Services_View.ashx?id=' + service + "&openid=" + serviceopen);
}

function SelectCheckBox_Group(ctr_This, index) {
    if (ctr_This) {
        if (!(ctr_This.value == null || ctr_This.value == undefined)) {
            if (ctr_This.value.lastIndexOf(",") < 1) {
                var id = $(ctr_This).parent().parent().attr('id');
                for (var j = index; j < (300 + index); j++) {
                    var s_Check = $("#" + id + "_" + j).find("input");
                    if (s_Check) {
                        if (ctr_This.checked) {
                            $(s_Check).attr('checked', 'checked');
                        }
                        else {
                            $(s_Check).attr('checked', '');
                        }
                    }
                }
            }
        }
        $("#hid_ListCheckAll").val('');
        for (var i = 0; i < 2000; i++) {
            var ctr_Check = document.getElementById("CheckAll_" + i);
            if (ctr_Check) {
                var arr = ctr_Check.value.split(",");
                if (ctr_Check.value == ctr_This.value) {
                    ctr_Check.checked = ctr_This.checked;
                }
                if (arr.length == 2) {
                    if (ctr_Check.checked) {
                        if ($("#hid_ListCheckAll").val() == '') {
                            $("#hid_ListCheckAll").val(ctr_Check.value);
                        }
                        else {
                            $("#hid_ListCheckAll").val($("#hid_ListCheckAll").val() + "|" + ctr_Check.value);
                        }
                    }
                }
            }
        }
    }

}
function RegServiceAll(othis,path) {
    SelectCheckBox_Group(othis, path);
    if ($("#hid_ListCheckAll").val() == '') {
        alert('Bạn hãy chọn ít nhất một dịch vụ để đăng ký.');
    }
    else{
        jQuery.ajax({
            type: "POST",
            data: "list=" + $("#hid_ListCheckAll").val(), //tham số gửi kèm
            url: DomainServer + "/p/reglist.ashx",
            timeout: 5000,
            error: function(request, error) {
                alert("Có lỗi trong quá trình gửi yêu cầu đăng ký.");
            },
            success: function(html) {
                if (parseInt(html) == 1) {
                    alert("Yêu cầu của bạn đã được gửi thành công tới hệ thống");
                }
                else {
                    alert("Yêu cầu đăng ký của bạn thực hiện KHÔNG thành công");
                }
            }
        });
    }
}