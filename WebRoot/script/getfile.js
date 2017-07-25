function GetFile(fileid) {
    var myFile = document.getElementById("myfile").value;
    var length = myFile.length;
    var x = myFile.lastIndexOf("\\");
    x++;
    var fileName = myFile.substring(x,length);
    document.getElementById("mname").value = fileName;
        
    var d = new Date();
    var str = d.getFullYear()+"-"+(d.getMonth()+1)+"-"+d.getDate();
    document.getElementById("scDate").value=str;

//    var filesize=fileid.files[0].fileSize;
//    var msize=0;
//    if(filesize>=1024){
//    	msize=filesize/1024+"K";
//    } else if(filesize>=1024*1024){
//    	msize=filesize/(1024*1024)+"M";
//    }
//    else
//    	{
//    	msize=filesize/(1024*1024*1024)+"G";
//    	}
//   document.getElementById("msize").value=msize;
    
}
