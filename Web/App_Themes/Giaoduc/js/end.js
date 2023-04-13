function ViewScore(url, id) {
    try {
        $.ajax({
            type: "POST",
            data: "m=" + id,
            url: url + "/JsonScore.GetScore.ajax",
            success: function(string) {
                string = "<div style='background-color:#ffffff;padding:10px;'>" + string + "</div>";
                Show_FaceBox_Alert(3, string);
            }
        });
    }
    catch (e) {
        alert(e);
    }
}
function RegistryGoldenKey(url) {
    try {
        $.ajax({
            type: "POST",
            data: "m=",
            url: url + "/JsonScore.Registry.ajax",
            success: function(string) {
            string = "<div style='background-color:#ffffff;padding:10px;'>" + string + "</div>";
                Show_FaceBox_Alert(3, string);
            }
        });
    }
    catch (e) {
        alert(e);
    }
}
function UnRegistryGoldenKey(url) {
    try {
        $.ajax({
            type: "POST",
            data: "m=",
            url: url + "/JsonScore.UnRegistry.ajax",
            success: function(string) {
                string = "<div style='background-color:#ffffff;padding:10px;'>" + string + "</div>";
                Show_FaceBox_Alert(3, string);
            }
        });
    }
    catch (e) {
        alert(e);
    }
}

function GetMapThingDetail(url, id) {
    try {
        $.ajax({
            type: "POST",
            data: "id=" + id,
            url: url + "/JsonTextBase.GetMapThingDetail.ajax",
            success: function(string) {
            IsFaceBoxFixed = false;
                string = "<div style='background-color:#ffffff;padding:10px;'>" + string + "</div>";
                Show_FaceBox_Alert(3, string);
            }
        });
    }
    catch (e) {
        alert(e);
    }
}

function GetSlide(url, id) {
    try {
        $.ajax({
            type: "POST",
            data: "id=" + id,
            url: url + "/JsonTextBase.GetMapThingDetail.ajax",
            success: function(string) {
                IsFaceBoxFixed = false;
                string = "<div style='background-color:#ffffff;padding:10px;'>" + string + "</div>";
                Show_FaceBox_Alert(3, string);
            }
        });
    }
    catch (e) {
        alert(e);
    }
}
function CateQuestionID(url, id) {
    try {
        $.ajax({
            type: "POST",
            data: "id=" + id,
            url: url + "/JsonExam.CateQuestionID.ajax",
            success: function(string) {
                string = "<div style='background-color:#ffffff;padding:10px;'>" + string + "</div>";
                Show_FaceBox_Alert(3, string);
            }
        });
    }
    catch (e) {
        alert(e);
    }
}
function CateQuestionPlayID(url, id,htmlid) {
    try {        
        htmlid = '';
        $.ajax({
            type: "POST",
            data: "id=" + id,
            url: url + "/JsonExam.CateQuestionPlayID.ajax",
            success: function(string) {
                if (htmlid.length > 1) {
                    $('#' + htmlid).html(string);
                }
                else {
                    string = "<div style='background-color:#ffffff;padding:10px;'>" + string + "</div>";
                    Show_FaceBox_Alert(3, string);
                }
                $(string).find("script").each(function(i) {
                    eval($(this).text());
                });
            }
        });
    }
    catch (e) {
        alert(e);
    }
}

function share_twitter() { u = location.href; t = document.title; window.open("http://twitter.com/home?status=" + encodeURIComponent(u)); }
function share_facebook() {
    u = location.href;
    t = document.title;
    window.open("http://www.facebook.com/share.php?u=" + encodeURIComponent(u) + "&t=" + encodeURIComponent(t));
    //https://www.facebook.com/sharer/sharer.php?u=http://mp3.zing.vn/album/My-Kool-Vietnam-Single-Thanh-Bui/ZWZADW8F.html
}
function share_google() {
    u = location.href;
    t = document.title;
    window.open("http://www.google.com/bookmarks/mark?op=edit&bkmk=" + encodeURIComponent(u) + "&title=" + t + "&annotation=" + t);
    //https: //plus.google.com/share?url=http://mp3.zing.vn/album/My-Kool-Vietnam-Single-Thanh-Bui/ZWZADW8F.html
}
function share_buzz() { u = location.href; t = document.title; window.open("http://buzz.yahoo.com/buzz?publisherurn=DanTri&targetUrl=" + encodeURIComponent(u)); }
function share_Zing() {
    u = location.href;
    t = document.title;
    window.open("http://link.apps.zing.vn/share?u=" + encodeURIComponent(u));
    //http://link.apps.zing.vn/share?u=http://mp3.zing.vn/album/My-Kool-Vietnam-Single-Thanh-Bui/ZWZADW8F.html
}