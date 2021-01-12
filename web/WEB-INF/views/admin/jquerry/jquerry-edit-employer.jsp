<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



<script type="text/javascript" charset="UTF-8">
<!-- Nav choose and clear -->
$('li.sidebar-item').removeClass('active');
item1=$( 'a[href*="${pageContext.request.contextPath}/admin-manager-freelancer"]');
for(var i=0;i<10;i++){
	item1=item1.parent();
	if(item1.hasClass('sidebar-item')){
		item1.addClass('active');
		break;
	};
};



<!-- access rolr -->
$("select[name='role']").val(${bitwiseHelper.bitwiseAnd(acc.role,3)});
$("select[name='access']").val(${bitwiseHelper.bitwiseAnd(acc.role,4)});

<!-- Togle Block -->
$("input[name='block']").val(${!acc.active});
$("input[name='block-2']").val(${!acc.active});
$("input[name='block']").prop('checked',${!acc.active});
$("input[name='block']").on( "click", function(e) {
//e.preventDefault();
  var curr = $("input[name='block']").val();
  if(curr=='true'){
	  $("input[name='block']").val(false);
	  $("input[name='block']").prop('checked',false);
	  $("input[name='block-2']").val(false);
  }else{
	  $("input[name='block']").val(true);
	  $("input[name='block']").prop('checked',true);
	  $("input[name='block-2']").val(true);
  }
  console.log($('#form11').serialize());
  
  
 
});


