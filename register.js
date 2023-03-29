/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


function validate()
            {
                var Fname=document.form1.fname.value;
                var Lname=document.form1.lname.value;
                var NIC=document.form1.nic.value;
                var gender=document.form1.gender.value;
                var country=document.form1.country.value;
                var uname=document.form1.uname.value;
                var number=document.form1.cnum.value;
                var pass=document.form1.password.value;
                
               

                if(Fname== "")
                {
                    alert("First Name is empty");
                    return false;
                }
                if(Lname=="")
                {
                    alert("Last Name is empty");
                    return false;
                }
                
                if(gender=="")
                {
                    alert("Gender is empty");
                    return false;
                }
                if(country=="country")
                {
                    alert("Select a country");
                    return false;
                }
                
                if(number=="")
                {
                    alert("Input phone number");
                    return false;
                }
                if(pass=="")
                {
                    alert("Password is empty");
                    return false;
                }
                if(NIC=="")
                {
                    alert("Input  NIC");
                    return false;
                }
                if(uname=="")
                {
                    alert("Input  username");
                    return false;
                }
                else{
                    alert("You Are Registered Successfully");
                }
                
            }
