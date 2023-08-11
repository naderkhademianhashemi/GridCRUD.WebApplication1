<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="GridCRUD.WebApplication1.page_aspx.WebForm1"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="grd1" runat="server"
                OnRowEditing="grd1_RowEditing"
                OnRowCancelingEdit="grd1_RowCancelingEdit"
                OnRowUpdating="grd1_RowUpdating"
                AutoGenerateColumns="false"
                >
                <Columns>
                     
                    <asp:TemplateField HeaderText="نام ستون">
                        <ItemTemplate>
                            <asp:Label ID="lblCol" runat="server"
                                Text='<%# Bind("Col") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtCol" runat="server"
                                Text='<%# Bind("Col") %>'>
                            </asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ویرایش" ShowHeader="true">
                        <ItemTemplate>
                            <asp:Button ID="btnedit" runat="server"
                                CommandName="Edit" Text="edit" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:Button ID="btnupdate" runat="server"
                                CommandName="Update" Text="Update"/>
                            <asp:Button ID="btncancel" runat="server"
                                CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                    </asp:TemplateField>
                </Columns>

            </asp:GridView>
        </div>
    </form>
</body>
</html>
