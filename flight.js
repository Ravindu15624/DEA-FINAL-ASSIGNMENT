/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validate()
            {
                var Fid=document.form1.fid.value;
                var Fname=document.form1.fname.value;
                var seat=document.form1.seat.value;
                var package=document.form1.package.value;
                var country=document.form1.country.value;

                

                if(Fid== "")
                {
                    alert("Flight ID is empty");
                    return false;
                }
                if(Fname=="")
                {
                    alert("Flight Name is empty");
                    return false;
                }
                if(seat=="Seats")
                {
                    alert("Select a Seat");
                    return false;
                }
                if(package=="packages")
                {
                    alert("Select a Package");
                    return false;
                }
                if(country=="Country")
                {
                    alert("Select a Country");
                    return false;
                }
                else{
                    alert("Flight Added Successfully");
                }
                
            }

