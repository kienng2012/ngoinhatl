<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" EnableEventValidation="false" Inherits="Web.Login" %>

<%@ Register src="Control/Login.ascx" tagname="Login" tagprefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>Hệ thống thống kê payment</title>
         <link type="text/css" rel="stylesheet" href="/Skin/admivdc.css" />
        	<link type="text/css" rel="stylesheet" href="/Skin/reset.css" />
	<link type="text/css" rel="stylesheet" href="/Skin/PopupPopup.css" />
</head>
<body >
    <form id="form1" runat="server">
    <div >
    
        <uc1:Login ID="Login1" runat="server" />
    
    </div>
    </form>
</body>
</html>
