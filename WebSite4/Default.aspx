<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>jquery draggable and resizable example</title>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/ui/1.8.23/jquery-ui.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.23/themes/base/jquery-ui.css" type="text/css" media="all" />

<style type="text/css">
#resizediv { width: 150px; height: 150px; padding: 0.5em;background:#EB5E00;color:#fff }
</style>

<script type="text/javascript">
    $(document).ready(function () {
        $("#resizediv").resizable();
        $("#resizediv").draggable();
    });
</script>
</head>
<body>
<form id="form1" runat="server">
<div id="resizediv">
Move... or Resize....<br />Aspdotnet-Suresh .com</div>
</form>
</body>
</html>