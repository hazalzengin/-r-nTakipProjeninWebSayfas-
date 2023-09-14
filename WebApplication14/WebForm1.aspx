﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication14.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server"
        Text="Ürün Seri No"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
    <asp:Button ID="Button1"  runat="server" Text="ARA" OnClick="Button1_Click" CssClass="btn btn-warning" /></asp:TextBox>
    <table class="table table-bordered" style="margin-top:15px">
       <tr>
           <th>AÇIKLAMA</th>
           <th>TARİH</th>
       </tr>
        <asp:Repeater ID="Reperater1" runat="server"> 
             <ItemTemplate>
                 <tr>
                     <td><%#Eval("AÇIKLAMA")%></td>
                     <td><%#Eval("TARIH")%></td>
                 </tr>

             </ItemTemplate>
        </asp:Repeater>
       
    </table>
</asp:Content>
