function xuanze(){ 
 var myValue=$('select option:selected').val();
    if(myValue=="xuesheng")
    {
    	$('#teacher').hide();
      $('#student').show();
    	$('#administrator').hide();
    }
    if(myValue=="jiaoshi")
    {
      $('#teacher').show();
      $('#student').hide();
      $('#administrator').hide();
    }
     if(myValue=="guanliyuan")
    {
      $('#administrator').show();
      $('#teacher').hide();
      $('#student').hide();
    }
}














