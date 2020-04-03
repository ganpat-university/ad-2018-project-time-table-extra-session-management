<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="AD_Project.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<link href="content_style.css" rel="stylesheet" type="text/css" />
<style>
.left
{
    height:68%;
    width:100%;
    float: left;
}
label
{
    padding: 0px 1px 0px 8px;
}
body 
{
    overflow:hidden;
    overflow:scroll;
	font-family: Arial, Helvetica, sans-serif;
	background-color:rgb(255, 206, 101);
}
*
{
	box-sizing: border-box;
}

    input[type=text], input[type=textarea] {
        width: 90%;
        padding: 15px;
        margin: 5px 0 22px 0;
        display: inline-block;
        border: none;
        background: #f1f1f1;
    }

    table {
        width: 55%;
        padding: 10px;
        margin: 5px 10px 22px 0;
        display: inline-block;
        border: none;
        background-size:100px;
        background: #f1f1f1;
    }
input[type=text]:focus ,input[type=textarea]:focus
{
  background-color: #ddd;
  outline: none;
}

hr
 {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

select
{
    width: 50%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}
 
button 
{
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

.cancelbtn 
{
  padding: 14px 20px;
  background-color:rgb(202, 131, 38);
}
.cancelbtn:hover
{
  background-color:#a54006; 
}
.submit
{ 
  width:15%;
}
.submit:hover
{
  background-color:#008f07;
}
.cancelbtn
{
  width: 15%;
}
.left:after 
{
  
  content: "";
  clear: both;
  display: table;
} 

@media screen and (max-width: 300px) 
{
  .cancelbtn, .submit
  {
     width: 100%;
  }
}

</style>
    <h1>Event Feedback</h1>
                    <p>You can write anything in here about the event.</p>
                    <hr>
                    <div class="left">
                    <label ><b>Which event did you attend?</b></label><br>
                    <select>
                        <option>---Select---</option>
                        <option value="event 1">Event 1</option>
                        <option value="event 2">Event 2</option>
                        <option value="event 3">Event 3</option>
                        <option value="event 4">Event 4</option>
                      </select><br><br>
                    <label ><b>Overall, How entertaining was the event?</b></label><br><br>
                    <br>
                    <label>Boring</label>
                    <input type="radio" name="x" value="Grade A">
                    <input type="radio" name="x" value="Grade B" >
                    <input type="radio" name="x" value="Grade C">
                    <input type="radio" name="x" value="Grade D">
                    <input type="radio" name="x" value="Grade E">
                    <label>Fantastic</label><br><br>
                    <hr>
                    <label ><b>After the event, how inspired did you feel?</b></label><br><br>
                    <br>
                    <label>None</label>
                    <input type="radio" name="y" value="Grade A">
                    <input type="radio" name="Y" value="Grade B" >
                    <input type="radio" name="y" value="Grade C">
                    <input type="radio" name="y" value="Grade D">
                    <input type="radio" name="y" value="Grade E">
                    <label>Fired Up!</label><br><br>
                    <hr>
                    <label ><b>Do you feel the day provided value for you?</b></label><br><br>
                    <br>
                    <label>Not At All</label>
                    <input type="radio" name="z" value="Grade A">
                    <input type="radio" name="z" value="Grade B" >
                    <input type="radio" name="z" value="Grade C">
                    <input type="radio" name="z" value="Grade D">
                    <input type="radio" name="z" value="Grade E">
                    <label>Definitely</label><br><br>
                    <hr>
                    <label ><b>What was the single best part of the event?</b></label><br><br>
                    <input type="radio" name="a" value="Grade A">
                    <label>A</label><br>
                    <input type="radio" name="a" value="Grade B">
                    <label>B</label><br>
                    <input type="radio" name="a" value="Grade C">
                    <label>C</label><br>
                    <input type="radio" name="a" value="Grade D">
                    <label>D</label><br>
                    <input type="radio" name="a" value="Grade E">
                    <label>E</label><br>
                    <input type="radio" name="a" value="Other">
                    <input type="text" name="a" placeholder="Best Part Of Event"><br><br>
                   
                    <label ><b>Would you recommand a similar event to a Friend?</b></label><br><br>
                    <input type="radio" name="b" value="Yes">
                    <label>Yes, Definitely</label><br>
                    <input type="radio" name="b" value="May be ,If content  was changed">
                    <label>Maybe ,If the content  was changed</label><br>
                    <input type="radio" name="b" value="May be ,If it was a cheaper">
                    <label>Maybe ,If it was cheaper</label><br>
                    <input type="radio" name="b" value="No,never">
                    <label>No, Never</label><br><br>
                
                    <h3><b>The Presrenter</b></h3>
                    <p>Evaluate Presenters on how they meet the criteria below</p>
                    <hr>
                    <label><b>Presenter 1</b></label><br>
                    <table border="1">
                        <tr>
                            <td></td>
                            <td>Not at All</td>
                            <td>Not really</td>
                            <td>Somewhat</td>
                            <td>Mostly</td>
                            <td>Definitely</td>
                        </tr>
                        <tr>
                            <td>Interesting and Entertaining</td>
                            <td><input type="radio" name="c" value="Not at All"></td>
                            <td><input type="radio" name="c" value="Not really"></td>
                            <td><input type="radio" name="c" value="Somewhat"></td>
                            <td><input type="radio" name="c" value="Mostly"></td>
                            <td><input type="radio" name="c" value="Definitely"></td>
                        </tr>
                        <tr>
                            <td>Relevant to you</td>
                            <td><input type="radio" name="d" value="Not at All"></td>
                            <td><input type="radio" name="d" value="Not really"></td>
                            <td><input type="radio" name="d" value="Somewhat"></td>
                            <td><input type="radio" name="d" value="Mostly"></td>
                            <td><input type="radio" name="d" value="Definitely"></td>
                        </tr>
                        <tr>
                            <td>Inspiring</td>
                            <td><input type="radio" name="e" value="Not at All"></td>
                            <td><input type="radio" name="e" value="Not really"></td>
                            <td><input type="radio" name="e" value="Somewhat"></td>
                            <td><input type="radio" name="e" value="Mostly"></td>
                            <td><input type="radio" name="e" value="Definitely"></td>
                        </tr>
                    </table><br>
                    <hr>
                    <h3><b>The Venue</b></h3>
                    <hr>
                    <p><b>Overall, were you satisfied with the venue and were you able to see and hear the presentations clearly?</b></p>
                    <input type="radio" name="f" value="Yes">
                    <label>Yes</label><br>
                    <input type="radio" name="f" value="No">
                    <label>No</label>

                    <h3><b>Final Thoughts?</b></h3>
                    <hr>
                    <p><b>If you were running the evnt, What would you have done Differently?</b></p>
                    <input type="text"  value="Event Run Differently">
                    <p><b>Any suggestions for future event topics?</b></p>
                    <input type="text"  value="Future event">
                    <p><b>Any final comments?</b></p>
                    <input type="text"  value="Final comments">
               <hr>
                        <button type="submit" class="submit" onclick="myFunction()">Submit</button>
                      <button type="button" class="cancelbtn" onclick="myFunction1()">Cancel</button>
                   </div>
</asp:Content>
