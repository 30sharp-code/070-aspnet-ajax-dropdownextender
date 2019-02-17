<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>DropDownExtender Example in 30sharp.com</title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
    
</head>
<body>
    <form id="form1" runat="server">
<asp:ScriptManager ID="ScriptManager1" runat="server" />
<div>


<asp:Label ID="TextLabel" runat="server" Text="DropDownExtender Example in 30sharp.com"
Style="display: block; padding:2px; padding-right: 50px; font-family: Tahoma; font-size: 13px;" Width="259px" />
<asp:Panel ID="DropPanel" runat="server" CssClass="ContextMenuPanel" Style="display :none; visibility: hidden;">
<asp:LinkButton runat="server" ID="Option1" Text="Option 1" CssClass="ContextMenuItem" OnClick="OnSelect" />
<asp:LinkButton runat="server" ID="Option2" Text="Option 2" CssClass="ContextMenuItem" OnClick="OnSelect" />
<asp:LinkButton runat="server" ID="Option3" Text="Option 3" CssClass="ContextMenuItem" OnClick="OnSelect" />        
</asp:Panel>
<cc1:DropDownExtender runat="server" ID="DDE"
TargetControlID="TextLabel"
DropDownControlID="DropPanel"  />



<br />



<asp:UpdatePanel id="Update" runat="server">
<ContentTemplate>
<asp:Label id="lblSelection" runat="server" Style="padding: 5px;" ForeColor="Red" />
</ContentTemplate>
<Triggers>
<asp:AsyncPostBackTrigger ControlID="Option1" EventName="Click" />
<asp:AsyncPostBackTrigger ControlID="Option2" EventName="Click" />
<asp:AsyncPostBackTrigger ControlID="Option3" EventName="Click" />
</Triggers>
</asp:UpdatePanel>



           
        </div>
    </form>
</body>
</html>
