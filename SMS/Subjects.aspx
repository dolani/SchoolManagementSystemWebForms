<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Subjects.aspx.cs" Inherits="SMS.Subjects" %>
<%@ Register Tagprefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <div class="Container" style="margin-top:100px;">
        <telerik:RadGrid runat="server" ID="SubjectsRadGrid" ForeColor="Green" BackColor="Wheat" GridLines="None" Cellpadding="4">

        </telerik:RadGrid>
    </div>

</asp:Content>
