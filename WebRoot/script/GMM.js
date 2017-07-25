function validate() {
              var pwd1 = document.getElementById("pwd1").value;
              var pwd2 = document.getElementById("pwd2").value;
		// 对比两次输入的密码 
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>两次输入密码相同</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>请输入相同密码</font>";
                document.getElementById("submit").disabled = true;
              }
          }