/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function validate()
            {
                var uname=document.form1.uname.value;
                var pass=document.form1.password.value;

                if(uname=="")
                {
                    alert("Input Username");
                    return false;
                }
                if(pass=="")
                {
                    alert("Input Password");
                    return false;
                }
                else{
                    alert("Logged In Successfully");
                }
            }

