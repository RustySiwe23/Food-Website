<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Recipes.aspx.cs" Inherits="Recipes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="title" Runat="Server">Recipes
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Header" Runat="Server">
    Recipe List
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="ID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            <asp:BoundField DataField="Rating" HeaderText="Rating" SortExpression="Rating" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [Recipe] WHERE [ID] = ?" InsertCommand="INSERT INTO [Recipe] ([ID], [Name], [Type], [Rating]) VALUES (?, ?, ?, ?)" ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" SelectCommand="SELECT * FROM [Recipe]" UpdateCommand="UPDATE [Recipe] SET [Name] = ?, [Type] = ?, [Rating] = ? WHERE [ID] = ?">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Rating" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Type" Type="String" />
            <asp:Parameter Name="Rating" Type="Int32" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource2" Height="50px" Width="125px">
        <Fields>
            <asp:BoundField DataField="RecipeID" HeaderText="RecipeID" SortExpression="RecipeID" />
            <asp:BoundField DataField="Instructions" HeaderText="Instructions" SortExpression="Instructions" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\FamilyRecipes.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [RecipeID], [Instructions] FROM [Instructions] WHERE ([RecipeID] = ?)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView1" Name="RecipeID" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="asideImage" Runat="Server">
    <img src="Images/bowl.jpg" alt="Bowl"/>
</asp:Content>

