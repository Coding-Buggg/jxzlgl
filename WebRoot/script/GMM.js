function validate() {
              var pwd1 = document.getElementById("pwd1").value;
              var pwd2 = document.getElementById("pwd2").value;
		// �Ա�������������� 
              if(pwd1 == pwd2) {
                  document.getElementById("tishi").innerHTML="<font color='green'>��������������ͬ</font>";
                  document.getElementById("submit").disabled = false;
              }
              else {
                  document.getElementById("tishi").innerHTML="<font color='red'>��������ͬ����</font>";
                document.getElementById("submit").disabled = true;
              }
          }