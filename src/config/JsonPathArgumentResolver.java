//package config;
//import java.io.IOException;
//
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.commons.io.IOUtils;
//import org.springframework.core.MethodParameter;
//import org.springframework.http.server.ServletServerHttpRequest;
//import org.springframework.web.bind.support.WebDataBinderFactory;
//import org.springframework.web.context.request.NativeWebRequest;
//import org.springframework.web.method.support.HandlerMethodArgumentResolver;
//import org.springframework.web.method.support.ModelAndViewContainer;
// 
//import com.jayway.jsonpath.JsonPath;
//public class JsonPathArgumentResolver implements HandlerMethodArgumentResolver {
//	private static final String JSONBODYATTRIBUTE = "JSON_REQUEST_BODY";
//    @Override
//    public boolean supportsParameter(MethodParameter parameter) {
//        return parameter.hasParameterAnnotation(JsonArg.class);
//    }
// 
//    @Override
//    public Object resolveArgument(MethodParameter parameter, ModelAndViewContainer mavContainer, NativeWebRequest webRequest, WebDataBinderFactory binderFactory) throws Exception {
//        String body = getRequestBody(webRequest);
//        String val = JsonPath.read(body, parameter.getMethodAnnotation(JsonArg.class).value());
//        return val;
//    }
// 
//    private String getRequestBody(NativeWebRequest webRequest){
//        HttpServletRequest servletRequest = webRequest.getNativeRequest(HttpServletRequest.class);
//        String jsonBody = (String) servletRequest.getAttribute(JSONBODYATTRIBUTE);
//        if (jsonBody==null){
//            try {
//                String body = IOUtils.toString(servletRequest.getInputStream());
//                servletRequest.setAttribute(JSONBODYATTRIBUTE, body);
//                return body;
//            } catch (IOException e) {
//                throw new RuntimeException(e);
//            }
//        }
//        return "";
// 
//    }
//}
