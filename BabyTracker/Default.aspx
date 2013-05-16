<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BabyTracker._Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <div class="container">
                <h4 data-bind="text: title"></h4>

                <div class="row-fluid">
                    <%-- panel for data entry --%>
                    <div class="span8">
                        <%-- <h3>Data entry here</h3>--%>

                        <h3>Enter the babies weight below</h3>

                        <label>Pounds</label>
                        <input id="pounds" type="text" class="input-mini" data-bind="hasfocus: true" />

                        <label>Remaining ounces</label>
                        <input id="ounces" type="text" class="input-mini" />

                        <button type="submit" class="btn btn-primary"><i class="icon-ok icon-white"></i>Add Baby Weight</button>
                        <button type="reset" class="btn btn-danger" data-bind="click: clearItems"><i class="icon-remove icon-white"></i>Start Over</button>


                        <div id="alert" class="alert" data-bind="visible: msg().length > 0, css: { 'alert-success': msgType() == 'success', 'alert-error': msgType() == 'error', 'alert-info': msgType() == 'info' }">
                            <a class="close" href="#" data-bind="click: hideAlert">×</a>
                            <p data-bind="text: msg"></p>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <div id="resultsChart" data-bind="chart: items()"></div>

    <table class="table table-striped" data-bind="visible: items().length > 0">
        <thead>
            <tr>
                <td>Weight</td>
                <td>Total Pounds</td>
                <td>Total Ounces</td>
            </tr>
        </thead>
        <tbody data-bind="foreach: items">
            <tr>
                <td data-bind="text: display()"></td>
                <td data-bind="text: totalPounds()"></td>
                <td data-bind="text: totalOunces()"></td>
                <td><a href="#" data-bind="click: $parent.removeItem"><i class="icon-remove"></i></a></td>
            </tr>
        </tbody>
    </table>

</asp:Content>
