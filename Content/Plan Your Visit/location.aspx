<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="location.aspx.cs" Inherits="shakespeareinthepark.org.Content.Plan_Your_Visit.location" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="location" class="font_15px">
       <p class="bold red font_21px margin_20px">LOCATION &amp; DIRECTIONS</p>
       <p class="margin_20px">Free Shakespeare in the Park is performed at the Delacorte Theater in Central Park. The Central Park entrances closest to the theater are at 81st Street and Central Park West or 79th Street and Fifth Avenue.</p>
        <p>The Delacorte Theater is easily accessible from the B, C and 6 subway lines, as well as from the M2, M3, M4, M10 and M79 bus lines. Once in the Park, follow the footpath to the Delacorte Theater. For those traveling by car, please note that there are no parking facilities in the Park.</p><br />
    </div>
    <form id="Form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <%@ Register assembly="Artem.Google" namespace="Artem.Google.UI" tagprefix="artem" %>
    <artem:GoogleMap CssClass="googlemarker" ID="GoogleMap" runat="server" Key="AIzaSyBvKYlOR6OfGelyBi_oNSw5RUFIkCdoGZ8" 
Latitude="40.780428" Longitude="-73.968998" Zoom="14" MapType="Roadmap"></artem:GoogleMap>
    <artem:GoogleMarkers ID="GoogleMarkers" runat="server" TargetControlID="GoogleMap">  
       <Markers>    
         <artem:Marker AutoOpen="true" Position-Latitude="40.780428" Position-Longitude="-73.968998" Info="The Delacorte Theater in Central Park<br/><br/>Home of The Public Theater's<br/>Free Shakespeare in the Park"></artem:Marker>
       </Markers>  
     </artem:GoogleMarkers>  
        </form>
</asp:Content>
