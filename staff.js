/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function validate()
            {
                var Sid=document.form1.sid.value;
                var Sname=document.form1.sname.value;
                var NIC=document.form1.nic.value;
                var gender=document.form1.gender.value;
                var uname=document.form1.uname.value;
                var number=document.form1.cnum.value;
                var pass=document.form1.password.value;
                
               

                if(Sid== "")
                {
                    alert("Staff ID is empty");
                    return false;
                }
                if(Sname=="")
                {
                    alert("Staff Name is empty");
                    return false;
                }
                
                if(gender=="")
                {
                    alert("Gender is empty");
                    return false;
                }
        
                if(number=="")
                {
                    alert("Input Contact number");
                    return false;
                }
                if(pass=="")
                {
                    alert("Password is empty");
                    return false;
                }
                if(NIC=="")
                {
                    alert("Input NIC");
                    return false;
                }
                if(uname=="")
                {
                    alert("Input Username");
                    return false;
                }
                else{
                    alert("Staff Added Successfully");
                }
                
                
            }
