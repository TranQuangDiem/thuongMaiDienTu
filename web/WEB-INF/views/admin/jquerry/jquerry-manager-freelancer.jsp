<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<!-- Nav choose and clear -->
<script type="text/javascript" charset="UTF-8">
$('li.sidebar-item').removeClass('active');
item1=$( 'a[href*="${pageContext.request.contextPath}/admin-manager-freelancer"]');
for(var i=0;i<10;i++){
	item1=item1.parent();
	if(item1.hasClass('sidebar-item')){
		item1.addClass('active');
		break;
	};
};
</script>