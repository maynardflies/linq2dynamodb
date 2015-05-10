﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Movies.aspx.cs" Inherits="MovieReviews.AspNet.BackEnd.Movies" %>
<%@ Register TagPrefix="asp" Namespace="MovieReviews.AspNet.BackEnd" Assembly="MovieReviews.AspNet.BackEnd" %>
<%@ Register TagPrefix="ds" Namespace="Linq2DynamoDb.AspNet.DataSource" Assembly="Linq2DynamoDb.AspNet.DataSource" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    
        <asp:GridView 
            ID="GridView1" 
            runat="server" 
            DataSourceID="MyDataSource1" 
            AutoGenerateDeleteButton="True" 
            AutoGenerateEditButton="True" 
            ShowFooter="True"
            AllowSorting="True"
            AllowPaging="False" PagerSettings-Position="TopAndBottom" PagerSettings-Mode="NumericFirstLast" PagerSettings-PageButtonCount="10">
        </asp:GridView>

        <ds:DynamoDbDataSource 
            ID="MyDataSource1" 
            runat="server" 
            ContextTypeName="MovieReviews.DataModel.ReviewsDataContext" 
            TableName="Movies" 
            GenerateEmptyRowOnTop="True"
         >
         </ds:DynamoDbDataSource>

</asp:Content>