<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Board.aspx.cs" Inherits="Obipoly.layout.Board" %>

<%@ Register Src="~/layout/div_field.ascx" TagPrefix="uc1" TagName="div_field" %>
<%@ Register Src="~/layout/div_field_rotated_left.ascx" TagPrefix="uc1" TagName="div_field_rotated_left" %>
<%@ Register Src="~/layout/div_field_rotated_right.ascx" TagPrefix="uc1" TagName="div_field_rotated_right" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="board_style.css" rel="stylesheet" /> 
      <title>

      </title>
</head>
<body>
    <form id="form1" runat="server">
<div id="board">
		<div id="top_container">
			<div id="field10" class="corner">
                <div class="players_container_corner">
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                </div>
                <div class="name_field_corner"></div>
                <div class="image_field_corner"></div>
			</div>
            <uc1:div_field runat="server" id="field11" />
			<uc1:div_field runat="server" id="field12" />
			<uc1:div_field runat="server" id="field13" />
			<uc1:div_field runat="server" id="field14" />
			<uc1:div_field runat="server" id="field15" />
			<uc1:div_field runat="server" id="field16" />
			<uc1:div_field runat="server" id="field17" />
			<uc1:div_field runat="server" id="field18" />
			<uc1:div_field runat="server" id="field19" />
			<div id="field20" class="corner">
                <div class="players_container_corner">
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                </div>
                <div class="name_field_corner"></div>
                <div class="image_field_corner"></div>
			</div>
		</div>
		<div id="left_container">
            <uc1:div_field_rotated_left runat="server" id="field09" />
            <uc1:div_field_rotated_left runat="server" id="field08" />
			<uc1:div_field_rotated_left runat="server" id="field07" />
			<uc1:div_field_rotated_left runat="server" id="field06" />
			<uc1:div_field_rotated_left runat="server" id="field05" />
			<uc1:div_field_rotated_left runat="server" id="field04" />
			<uc1:div_field_rotated_left runat="server" id="field03" />
			<uc1:div_field_rotated_left runat="server" id="field02" />
			<uc1:div_field_rotated_left runat="server" id="field01" />
		</div>
		<div id="center_container"></div>
		<div id="right_container">
            <uc1:div_field_rotated_right runat="server" ID="field21" />
			<uc1:div_field_rotated_right runat="server" ID="field22" />
			<uc1:div_field_rotated_right runat="server" ID="field23" />
			<uc1:div_field_rotated_right runat="server" ID="field24" />
			<uc1:div_field_rotated_right runat="server" ID="field25" />
			<uc1:div_field_rotated_right runat="server" ID="field26" />
			<uc1:div_field_rotated_right runat="server" ID="field27" />
			<uc1:div_field_rotated_right runat="server" ID="field28" />
			<uc1:div_field_rotated_right runat="server" ID="field29" />
		</div>
		<div id="bottom_container">
			<div id="field0" class="corner">
                <div class="players_container_corner">
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                </div>
                <div class="name_field_corner"></div>
                <div class="image_field_corner"></div>
			</div>
			<uc1:div_field runat="server" id="field39" />
			<uc1:div_field runat="server" id="field38" />
			<uc1:div_field runat="server" id="field37" />
			<uc1:div_field runat="server" id="field36" />
			<uc1:div_field runat="server" id="field35" />
			<uc1:div_field runat="server" id="field34" />
			<uc1:div_field runat="server" id="field33" />
			<uc1:div_field runat="server" id="field32" />
			<uc1:div_field runat="server" id="field31" />
			<div id="field30" class="corner">
                <div id="prisoners_container">
                    <div class="prisoner"></div>
                    <div class="prisoner"></div>
                    <div class="prisoner"></div>
                    <div class="prisoner"></div>
                </div>
                <div id="guests_container">
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                    <div class="guest"></div>
                </div>
                <div id="prison_label"></div>
                <div id="prison_image"></div>
			</div>
		</div>
	</div>
    </form>
</body>
</html>
