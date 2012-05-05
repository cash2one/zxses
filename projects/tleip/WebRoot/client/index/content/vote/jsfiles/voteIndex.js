function validateSubmit(){
	var num = 0;
	num = $("input[name=itemsIds]:checked").length;
	if(num == 0){
		$.alert("请选择投票选项！");
		return false;
	}
	return true;
}