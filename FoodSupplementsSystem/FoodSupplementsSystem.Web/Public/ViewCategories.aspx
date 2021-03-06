﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCategories.aspx.cs" Inherits="FoodSupplementsSystem.Web.Public.ViewCategories" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView runat="server" ID="lvCategories"
        ItemType="FoodSupplementsSystem.Data.Models.Category"
        SelectMethod="lvCategories_GetData">
        <LayoutTemplate>
            <h2>All Categories</h2>
            <div runat="server" id="itemPlaceholder"></div>
        </LayoutTemplate>
        <ItemTemplate>
            <b><h3><%#: Item.Name %></h3></b>
            <asp:ListView runat="server" ItemType="FoodSupplementsSystem.Data.Models.Supplement" DataSource="<%# Item.Supplements %>">
                <LayoutTemplate>
                    <p>
                        All registered supplements in this category!
                    </p>
                    <ul runat="server" id="itemPlaceholder">
                    </ul>
                </LayoutTemplate>
                <ItemTemplate>
                    <a href="../Private/DetailsSupplement.aspx?id=<%# Item.Id %>"><img src="<%# Item.ImageUrl %>" /></a>
                    <p><%# Item.Name %></p>
                </ItemTemplate>
                <EmptyDataTemplate>
                    No supplements.
                </EmptyDataTemplate>
            </asp:ListView>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
