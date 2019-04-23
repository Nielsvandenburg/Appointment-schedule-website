<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="MetroGnome808.Schedule" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
 

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid" />
    <div class="row">
        <div class="col-4">

        </div>
        <div class="col-4 align-content-center">
            <br />
            <h3>Ready for your studio time? Choose a date and let's begin</h3>
            <br />
            <div class="card align-content-center" style="width: 20rem;">
  
            <div class="card-body align-center">
                 <h5 class="card-title">Make an Appointment</h5>
            
                <div>
                <asp:Calendar ID="CalendarSchedule" class="align-center" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                <OtherMonthDayStyle ForeColor="#999999" />
                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                <WeekendDayStyle BackColor="#CCCCFF" />
                </asp:Calendar>
                    </div>
            <br />
                <br />
               <form action="/action_page.php">
                  Select a time:
                  <input type="time" name="usr_time">
                   <br />
                  
                </form>


                    </div>
        </div>
                 <p class="card-text">Check if your desired appointment date is free. Choose a date and time.</p>
                 <a href="#" class="btn btn-primary">Select Date</a>
            <br />
            <br />

             </div>
           
        <div class="col-4">
            <!--<label for="meeting-time">Choose a time for your appointment:</label>

            <input type="datetime-local" id="meeting-time"
             name="meeting-time" value="2018-06-12T19:30"
                min="2019-01-01T00:00" max="2050-01-01T00:00">
            -->
         </div>




    </div>
    
</asp:Content>
