//前端刷新验证码
function changeimage(obj){
	var date = new Date();
	var new_src = $.basePath + "codeImageAction.do?frontUserCode=yes&timestamp=" + date.getTime();
	$(obj).attr("src",new_src);
}

//判断是否是Email
function isEmail(str)
{
	var regu = "^(([0-9a-zA-Z]+)|([0-9a-zA-Z]+[_.0-9a-zA-Z-]*))@([a-zA-Z0-9-]+[.])+([a-zA-Z]{2}|net|com|gov|mil|org|edu|int|name|asia)$";
	var re = new RegExp( regu );
	if( str.search( re ) == -1 )
	{
		return false;
	}
	else
	{
		return true;
	}
}

//验证是否为空
function check_blank(obj, obj_name){
	//去掉前后空格
	var str = obj.
	if(obj.value != ''){   
		return true;   
	}else{   
	    alert(obj_name + "所填不能为空！"); 
	obj.value = "";
	    return false;   
	}   
}

//过滤输入字符的长度
function check_str_len(name,obj,maxLength){   
	obj.value=obj.value.replace(/(^\s*)|(\s*$)/g, "");
	var newvalue = obj.value.replace(/[^\x00-\xff]/g, "**"); 
    var length11 = newvalue.length; 
	if(length11>maxLength){
	  	alert(name+"的长度不能超过"+maxLength+"个字符！");
	  	obj.value="";
	  	obj.focus();     
	} 
}

//验证只能为数字
function checkNumber(obj){
	var reg = /^[0-9]+$/;
    if(obj.value!=""&&!reg.test(obj.value)){
 		alert('只能输入数字！');
 		obj.value = "";
 		obj.focus();
 		return false;
 	}
}

//验证数字大小的范围

function check_num_value(obj_name,obj,minvalue,maxvalue){
	var reg = /^[0-9]+$/;
	if(obj.value!=""&&!reg.test(obj.value)){
		alert(obj_name+'只能输入数字！');
 		obj.value = "";
 		obj.focus();
 		return false;
	}else if(minvalue>obj.value||obj.value>maxvalue){
		alert(obj_name+"的范围是"+minvalue+"-"+maxvalue+"!");
		obj.value="";
        obj.focus();
        return false;
	}

}

//验证只能是字母和数字
function checkZmOrNum(zmnum){
  var zmnumReg=/^[0-9a-zA-Z]*$/;
  if(zmnum.value!=""&&!zmnumReg.test(zmnum.value)){
     alert("只能输入是字母或者数字,请重新输入");
     zmnum.value="";
     zmnum.focus();
     return false;
  }
}

//验证双精度数字
function check_double(obj,obj_name){
	var reg = /^[0-9]+(\.[0-9]+)?$/;
	if(obj.value!=""&&!reg.test(obj.value)){
 		alert(obj_name+'所填必须为有效的双精度数字');
 		obj.value = "";
		obj.focus();
 		return false;
	}
}
   

//复选框全选
function checkboxs_all(obj,cName){
	var checkboxs = document.getElementsByName(cName);
    for(var i=0;i<checkboxs.length;i++){
		checkboxs[i].checked = obj.checked;
	}	
}


//验证邮政编码
function check_youbian(obj){
	var reg=/^\d{6}$/; 
	if(obj.value!=""&&!reg.test(obj.value)){
 		alert('邮政编码格式输入错误！');
 		obj.value = "";
 		obj.focus();
 		return false;
	}
}

//验证邮箱格式
function check_email(obj){
	var reg = /^[a-zA-Z0-9_-]+(\.([a-zA-Z0-9_-])+)*@[a-zA-Z0-9_-]+[.][a-zA-Z0-9_-]+([.][a-zA-Z0-9_-]+)*$/; 
	if(obj.value!=""&&!reg.test(obj.value)){
		obj.select();
 		alert('电子邮箱格式输入错误！');
 		obj.value = "";
		obj.focus();
 		return false;
	}
}

/*验证固定电话号码
  0\d{2,3}   代表区号   
  [0\+]\d{2,3}   代表国际区号
 \d{7,8} 代表7－8位数字(表示电话号码)
 正确格式：区号-电话号码-分机号(全写|只写电话号码)
*/

function check_phone(obj){
	var reg=/^(([0\+]\d{2,3}-)?(0\d{2,3})-)?(\d{7,8})(-(\d{3,}))?$/; 
	if(obj.value!=""&&!reg.test(obj.value)){
 		alert('电话号码格式输入错误！');
 		obj.value = "";
		obj.focus();
 		return false;
	}
}

//验证手机号码(检验13,15,18开头的手机号！)
function check_telephone(obj){
	var reg= /^[1][358]\d{9}$/;
	if(obj.value!=""&&!reg.test(obj.value)){
 		alert('手机号码格式输入错误！');
 		obj.value = "";
		obj.focus();
 		return false;
	}
}

//验证是否为中文
function isChinese(obj,obj_name){
	var reg=/^[\u0391-\uFFE5]+$/; 
	if(obj.value!=""&&!reg.test(obj.value)){
 		alert(obj_name+'必须输入中文！');
 		obj.value = "";
		obj.focus();
 		return false;
	}
}

//判断是否是IE浏览器

function checkIsIE(){
	if(-[1,]){   
     alert("这不是IE浏览器！");   
	}else{   
     alert("这是IE浏览器！");   
	} 
}

//验证是否为正确网址
function check_IsUrl(obj){


}

//检验时间大小(与当前时间比较)
function checkDate(obj,obj_name){
	var obj_value=obj.value.replace(/-/g,"/");//替换字符，变成标准格式(检验格式为：'2009-12-10')
	// var obj_value=obj.value.replace("-","/");//替换字符，变成标准格式(检验格式为：'2010-12-10 11:12')
	var date1=new Date(Date.parse(obj_value));   
	var date2=new Date();//取今天的日期
	if(date1>date2){
		alert(obj_name+"不能大于当前时间！");
		return false;
	}
}

//检验两个文本框内时间大小
function check(){
	
}


 //判断有无残疾,如果点无残疾后面都不能选
 function checkbox_select(obj_name){
	var checklength=document.getElementsByName(obj_name);
	if(checklength[0].checked==true){
	       for(var i=1;i<checklength.length;i++){
	              checklength[i].disabled="disabled";
	              checklength[i].checked=false;
	       }
	}else{
		for(var i=1;i<checklength.length;i++){
	            checklength[i].disabled=false;
	       }
	}
}


var Validate = function(){}  
  
Validate.prototype =  {  
    // 验证字符串  
    testString: function(str) {  
        return str.replace(/^\s+|\s+$/g, "") != "";  
    },  
      
    // 验证整数  
    testIntegerNumber: function(num) {  
        if (!this.testString(num)) {  
            return false;  
        }  
        return /^[0-9]+$/.test(num);  
    },  
      
    // 验证浮点数  
    testDoubleNumber: function(num) {  
        if (!this.testString(num)) {  
            return false;  
        }  
        return /^\d+(\.)\d+$/.test(num);  
    },  
      
    // 验证日期(yyyy/MM/dd)  
    testDate: function(date) {  
        if (!this.testString(date)) {  
                return false;  
        }  
        var reg = /^[1-2]\d{3}\/(0?[1-9]|1[0-2])\/(0?[1-9]|[12][0-9]|3[0-1])$/;   
        return reg.test(date);  
    },  
      
    // 验证Email  
    testEmail: function(email) {  
        if (!this.testString(email)) {  
            return false;  
        }  
        var reg = /^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;  
        return reg.test(email);  
    },  
      
    // 验证中文  
    testChinese: function(str) {  
        if (!this.testString(str)) {  
            return false;  
        }  
        return !/^[u4E00-u9FA5]+$/.test(str);  
    }  
      
}