<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="SMS.Students" %>
<%@ Register Tagprefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="Container" style="margin-top:100px;">
        <asp:GridView ID="StudentsGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" DataKeyNames="StudentId" OnRowDeleting="StudentsGrid_RowDeleting">
        <Columns>


            <asp:TemplateField HeaderText="">
                <ItemTemplate>
                    <asp:Label ID="LabelId" runat="server" Text='<%# Bind("StudentId") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="View Subjects">
                <ItemTemplate>
                    <span>
                        <asp:LinkButton ID="lnkB" runat="Server" Text="View" CommandName="Delete"></asp:LinkButton>
                    </span>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    </div>

    <div class="container" style="margin-top:100px">
        <asp:GridView ID="StudentGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"></asp:GridView>
    </div>
</asp:Content>
