/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validate()
            {
                var TicketID=document.form1.tid.value;
                var Date=document.form1.date.value;
                var Time=document.form1.time.value;
                var Arrival=document.form1.arrival.value;
                var Departure=document.form1.departure.value;
                var FlightID=document.form1.fid.value;
                var Passenger=document.form1.passengers.value;
                
                
               

                if(TicketID=="")
                {
                    alert("Ticket ID is empty");
                    return false;
                }
                if(Date=="")
                {
                    alert("Select a Date");
                    return false;
                }
                
                if(Time=="")
                {
                    alert("Select a Time");
                    return false;
                }
                if(Arrival=="arrival")
                {
                    alert("Select a Arrival");
                    return false;
                }
                
                if(Departure=="departure")
                {
                    alert("Select a Departure");
                    return false;
                }
                if(FlightID=="")
                {
                    alert("Flight ID is empty");
                    return false;
                }
                if(Passenger=="passenger")
                {
                    alert("Select a Passenger");
                    return false;
                }
                
                else
                {
                    alert("Ticket Booked Successfully");
                }
                
                
            }
