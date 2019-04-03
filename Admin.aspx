<%@ Page Title="" Language="C#" MasterPageFile="~/NestedMasterPage1.master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="OnlineShopping.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ChildContent" runat="server">
    <asp:HiddenField ID="HiddenFieldDate" runat="server" />
    <asp:HiddenField ID="HiddenFieldAddressId" runat="server" />
    <div class="container-fluid top-buffer">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="card">
                    <div class="card-header">
                        <div class="card-title">
                            <h4>Total Orders</h4>
                        </div>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="GVMyOrders" runat="server" AllowPaging="True" AllowSorting="True"
                            AutoGenerateColumns="False" CssClass="table table-bordered table-sm table-hover table-striped"
                            EmptyDataText="You dont have placed any Order" EnableTheming="False" PageSize="5" OnRowCommand="GVMyOrders_RowCommand" OnPageIndexChanging="GVMyOrders_PageIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="OrderDate" HeaderText="Date of Order">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="OrderId" HeaderText="Order Id">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="AddressId" HeaderText="Address Id">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="OrderedBy" HeaderText="Ordered By">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="GrandTotal" HeaderText="Amount in (INR)">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:ButtonField ButtonType="Button" CommandName="btnViewFullDetails" Text="View Order">
                                    <ControlStyle CssClass="btn btn-success btn-sm" />
                                </asp:ButtonField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
        <%--     view full order details panel       --%>
        <asp:Panel ID="panelViewFullOrderDetails" runat="server">
            <div class="row top-buffer mt-5">
                <div class="col-md-1"></div>
                <div class="col-md-10">
                    <div class="card">
                        <div class="card-header">
                            <div class="card-title">
                                <h4>Full Details<asp:Button ID="btnClose" OnClick="btnClose_Click" CssClass="btn btn-outline-danger btn-sm fa-pull-right" runat="server" Text="X" /></h4>
                            </div>
                        </div>
                        <div class="card-body">
                            <asp:GridView ID="GVFullDetails" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" CssClass="table table-bordered table-sm table-hover table-striped"
                                EmptyDataText="Click Full Details above to view the Orders" EnableTheming="False" PageSize="10" OnPageIndexChanging="GVFullDetails_PageIndexChanging">
                                <Columns>
                                    <asp:BoundField DataField="ProductId" HeaderText="Pro Id">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="NameOfProduct" HeaderText="Name of The Product">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Category" HeaderText="Category">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Size" HeaderText="Size">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Color" HeaderText="Color">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MRP" HeaderText="MRP">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="OfferPrice" HeaderText="Offer Price">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Qty" HeaderText="Qty">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="SubTotal" HeaderText="SubTotal">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <div class="alert alert-warning text-center font-weight-bold font-italic" role="alert">
                                The Product(s) will be delivered on the Below Address
                            </div>






                            <asp:GridView ID="GVAddressField" runat="server" AllowPaging="True" AllowSorting="True"
                                AutoGenerateColumns="False" CssClass="table table-bordered table-sm table-hover table-striped"
                                EmptyDataText="There is a technical problem while displaying the Address records." EnableTheming="False" PageSize="5">
                                <Columns>
                                    <asp:BoundField DataField="FirstName" HeaderText="First Name">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MiddleName" HeaderText="Middle Name">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="LastName" HeaderText="Last Name">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="MobileNumber" HeaderText="Mobile Number">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Address" HeaderText="Address">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="PinCode" HeaderText="PinCode">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="State" HeaderText="State">
                                        <HeaderStyle HorizontalAlign="Left" />
                                        <ItemStyle HorizontalAlign="Left" />
                                    </asp:BoundField>
                                </Columns>
                            </asp:GridView>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Panel>
    </div>



    <div class="container-fluid top-buffer">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-5">
                <div class="card">
                    <div class="card-title">
                        <h4 class="text-center text-light bg-success">List of Registered Customers</h4>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="GVCustomers" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" CssClass="table table-bordered table-sm table-hover table-striped" GridLines="Vertical" AllowPaging="True" AllowSorting="True"
                            EmptyDataText="No rows  for the selection criteria." EnableTheming="False" PageSize="3" OnPageIndexChanging="GVCustomers_PageIndexChanging">
                            <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

                            <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="card">
                    <div class="card-title">
                        <h4 class="text-center text-light bg-success">List of Registered Employees</h4>
                    </div>
                    <div class="card-body">
                        <asp:GridView ID="GVEmployees" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" CssClass="table table-bordered table-sm table-hover table-striped" ForeColor="Black" GridLines="Vertical" AllowPaging="True" AllowSorting="True"
                            EmptyDataText="No rows  for the selection criteria." EnableTheming="False" PageSize="3" OnPageIndexChanging="GVEmployees_PageIndexChanging">
                            <AlternatingRowStyle BackColor="#CCCCCC"></AlternatingRowStyle>

                            <FooterStyle BackColor="#CCCCCC"></FooterStyle>

                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" BackColor="#999999" ForeColor="Black"></PagerStyle>

                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#F1F1F1"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#808080"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#CAC9C9"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#383838"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>

        <%--second row--%>
        <div class="row top-buffer">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <div class="card">
                    <div class="card-title">
                        <h4 class="text-center text-light bg-success">List of Notifications sent to users</h4>
                    </div>
                    <div class="card-body">

                        <asp:GridView ID="GVNotifications" runat="server" AllowPaging="True" AllowSorting="True"
                            AutoGenerateColumns="False" CssClass="table table-bordered table-sm table-hover table-striped"
                            EmptyDataText="No rows  for the selection criteria." EnableTheming="False" PageSize="10"
                            OnPageIndexChanging="GVNotifications_PageIndexChanging">
                            <Columns>
                                <asp:BoundField DataField="NotificationId" HeaderText="ID">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Right" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Notification" HeaderText="Notification Content">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="UserName" HeaderText="Sent to User">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                                <asp:BoundField DataField="IsRead" HeaderText="Read Or Not?">
                                    <HeaderStyle HorizontalAlign="Left" />
                                    <ItemStyle HorizontalAlign="Left" />
                                </asp:BoundField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ChildFooter" runat="server">
</asp:Content>
