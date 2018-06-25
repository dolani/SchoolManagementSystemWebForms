<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NewUser.aspx.cs" Inherits="SMS.NewUser" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI"%>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top:100px">
        
        <telerik:RadPageLayout runat="server">
            <Rows>
                <telerik:LayoutRow runat="server">
                    <Columns>
                        <telerik:LayoutColumn runat="server" Push="4" SpanMd="6">
                            <telerik:RadLabel runat="server">First Name:</telerik:RadLabel>
                            <telerik:RadTextBox runat="server" ID="FirstNameTextBox" EmptyMessage="Enter First Name Here"></telerik:RadTextBox>
                            <br/>
                            <br />
                            <telerik:RadLabel runat="server">Last Name:</telerik:RadLabel>
                            <telerik:RadTextBox runat="server" ID="LastNameTextBox" EmptyMessage="Enter Last Name Here"></telerik:RadTextBox>
                            <br/>
                            <br />
                            <telerik:RadLabel runat="server">Gender:</telerik:RadLabel>
                            <telerik:RadDropDownList style="padding-left:20px" RenderMode="Lightweight" ID="GenderRadDropDownList" runat="server"
>
                                <Items>
                                    <telerik:DropDownListItem Text="Male" />
                                    <telerik:DropDownListItem Text="Female" />
                                </Items>
                            </telerik:RadDropDownList>
                            <br >
                            <br />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            <telerik:RadButton runat="server" OnClick="CreateStudentButton_Click" BorderStyle="None" ButtonType="SkinnedButton" Text="Create New Student Record" ID="CreateStudentButton"></telerik:RadButton>
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>
    </div>
</asp:Content>
