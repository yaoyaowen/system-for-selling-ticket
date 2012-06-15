<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainFrame.aspx.cs" Inherits="TicketBookWebSite.seller.MainFrame" %>

<!DOCTYPE html PUBLIC "-//W3C//Dtd html 4.0 transitional//EN">
<html>
	<head>
		<title>后台管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR"/>
		<meta content="Visual Basic .NET 7.1" name="CODE_LANGUAGE"/>
		<meta content="JavaScript" name="vs_defaultClientScript"/>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema"/>
		<script  type="text/javascript" language="javascript">	
		</script>
	</head>
		<frameset id="mainFrameSet" rows="100,*,26" >
			<frame id="topFrameLogo"  src="../LogoAndShow.aspx"  frameborder="0"
				scrolling="no"/>
			<frameset id="contentFrameSet" style="" cols="220,*" >
				<frame id="leftFrame"  src="ListView.aspx" frameborder="0" scrolling="no"/>				
				<frame id="mainFrame" src="" frameborder="0"scrolling="no"/>					
			</frameset>
			<frame id="footFrame"  src="../AreaFoot.htm" frameborder="0" scrolling="no"/>
	    </frameset>
</html>
