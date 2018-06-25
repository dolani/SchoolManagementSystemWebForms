<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="SMS.Index" %>
<%@ Register TagPrefix="telerik" Namespace="Telerik.Web.UI" Assembly="Telerik.Web.UI"%>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <telerik:RadPageLayout runat="server" GridType="Fluid">
            <Rows>
                <telerik:LayoutRow> 
                    <Columns>
                        <telerik:LayoutColumn Span="4" SpanMd="6" SpanSm="12" SpanXs="12">
                            <img style="height:300px; width:300px;" src="https://cdn.pixabay.com/photo/2017/01/26/21/32/background-2011768_1280.jpg" />
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanMd="6" SpanSm="12" SpanXs="12">
                            <img style="height:300px; width:300px;" src="https://www.planwallpaper.com/static/cache/bf/7c/bf7c742e96dd0452aa42677ecb1c90d6.jpg" />
                        </telerik:LayoutColumn>
                        <telerik:LayoutColumn Span="4" SpanMd="6" SpanSm="12" SpanXs="12">
                            <img style="height:300px; width:300px;" src="https://cdn.pixabay.com/photo/2017/01/26/21/32/background-2011768_1280.jpg" />
                        </telerik:LayoutColumn>
                    </Columns>
                </telerik:LayoutRow>
            </Rows>
        </telerik:RadPageLayout>
        <h1>SMSsy</h1>
        <p class="lead">School Management System (SMSys) is an ASP.net solution to a Programming Test of Eminent Software Limited.</p>
        <p><a href="https://eminenttechonology.com" target="_blank" class="btn btn-primary btn-lg">Visit Us &raquo;</a></p>
    </div>

    <telerik:RadPageLayout runat="server">
        <Rows>
            <telerik:LayoutRow> 
                <Columns>
                    <telerik:LayoutColumn Span="4" SpanMd="4" SpanSm="12" SpanXs="12">
                        <p class="lead">A table Showing All Our Students</p>
                        <p><a href="Students" class="btn btn-primary btn-lg">View Students &raquo;</a></p>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="4" SpanMd="4" SpanSm="12" SpanXs="12">
                        <p class="lead">A table Showing Subjects Offered in Our School</p>
                        <p><a href="Subjects" class="btn btn-primary btn-lg">View Subjects &raquo;</a></p>
                    </telerik:LayoutColumn>
                    <telerik:LayoutColumn Span="4" SpanMd="4" SpanSm="12" SpanXs="12">
                        <p><a href="NewUser" class="btn btn-success btn-lg">New User &raquo;</a></p>
                    </telerik:LayoutColumn>
                </Columns>
            </telerik:LayoutRow>
        </Rows>

        
    </telerik:RadPageLayout>

</asp:Content>
