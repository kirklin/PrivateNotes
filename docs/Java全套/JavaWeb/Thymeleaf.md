# Thymeleaf笔记

## 从三层架构到MVC

- MVC理念和三层架构并不矛盾，反而是三层架构的延伸
- MVC专指表述层的设计理念
- MVC理念的核心思想：解耦

![./images](./assets/Thymeleaf/MVC.png)

## 从业务功能和三层架构角度看项目网格

![./images](./assets/Thymeleaf/MVCProject.png)

## Thymeleaf搭建环境

### 导入jar包

> attoparser-2.0.5.RELEASE.jar
>
> javassist-3.20.0-GA.jar
>
> log4j-1.2.15.jar
>
> ognl-3.1.26.jar
>
> slf4j-api-1.7.25.jar
>
> slf4j-log4j12-1.7.25.jar
>
> thymeleaf-3.0.12.RELEASE.jar
>
> unbescape-1.1.6.RELEASE.jar

### 配置web.xml

```xml
<!-- 在上下文参数中配置视图前缀和视图后缀 -->
<context-param>
    <param-name>view-prefix</param-name>
    <param-value>/WEB-INF/view/</param-value>
</context-param>
<context-param>
    <param-name>view-suffix</param-name>
    <param-value>.html</param-value>
</context-param>
```

### 创建ViewBaseServlet

```java
import org.thymeleaf.TemplateEngine;
import org.thymeleaf.context.WebContext;
import org.thymeleaf.templatemode.TemplateMode;
import org.thymeleaf.templateresolver.ServletContextTemplateResolver;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class ViewBaseServlet extends HttpServlet {

    private TemplateEngine templateEngine;

    @Override
    public void init() throws ServletException {

        // 1.获取ServletContext对象
        ServletContext servletContext = this.getServletContext();

        // 2.创建Thymeleaf解析器对象
        ServletContextTemplateResolver templateResolver = new ServletContextTemplateResolver(servletContext);

        // 3.给解析器对象设置参数
        // ①HTML是默认模式，明确设置是为了代码更容易理解
        templateResolver.setTemplateMode(TemplateMode.HTML);

        // ②设置前缀
        String viewPrefix = servletContext.getInitParameter("view-prefix");

        templateResolver.setPrefix(viewPrefix);

        // ③设置后缀
        String viewSuffix = servletContext.getInitParameter("view-suffix");

        templateResolver.setSuffix(viewSuffix);

        // ④设置缓存过期时间（毫秒）
        templateResolver.setCacheTTLMs(60000L);

        // ⑤设置是否缓存
        templateResolver.setCacheable(true);

        // ⑥设置服务器端编码方式
        templateResolver.setCharacterEncoding("utf-8");

        // 4.创建模板引擎对象
        templateEngine = new TemplateEngine();

        // 5.给模板引擎对象设置模板解析器
        templateEngine.setTemplateResolver(templateResolver);

    }

    protected void processTemplate(String templateName, HttpServletRequest req, HttpServletResponse resp) throws IOException {
        // 1.设置响应体内容类型和字符集
        resp.setContentType("text/html;charset=UTF-8");

        // 2.创建WebContext对象
        WebContext webContext = new WebContext(req, resp, getServletContext());

        // 3.处理模板数据
        templateEngine.process(templateName, webContext, resp.getWriter());
    }
}
```

### ViewBaseServlet用法

- 具体模块下的Servlet继承ViewBaseServlet
- 想要**转发**到某个视图时，调用父类的processTemplate()即可
- 按照习惯，我们通常会将模板视图文件放在WEB-INF目录下，这样就不能直接重定向到模板视图文件。此时我们需要重定向到一个Servlet，然后再通过这个Servlet转发到这个模板视图并渲染。
- 访问项目的首页时，也必须经过Servlet，执行processTemplate()方法，才能够正确解析首页页面上的Thymeleaf元素。

![./images](data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAn4AAAAhCAIAAADI9TE8AAAKt0lEQVR42u1dPW8UPRB2/gG0iCIi+QGpKBBIgSJQEokCqEKDBA1EQtAghUg0IKTkGpDSQEcKJKADCoQAUVBBn6AUiDr/AObNiHnnZmyvd/duc1mepzjl9myv7fl47PHsZur3798BAAAAAICuMAXqBQAAAIAuAeoFAAAAgE4B6gUAAACATgHqBQAAAIBOAeoFAAAAgE4B6gUAAACATgHqBQBgIvDw4cP379+/efPG/7S5uXn37t2tra1U3ampqefPn1+8eNFc/PTp08mTJ1O1Pn/+fOrUKfhAoHtUU++5c+fevn27vb197Nixxrf58ePHzMzM2bNno3bVBiPpXiFmZ2fpRjDUicL169efPHmS97DjBnHGnTt3vOsHaoGIcGlpaXsPxpzZgVy7du3x48e+Iv1Kn8bDcJW8YlCZhYUFsmupxTYeLfzgwYPbt2+HvypXPq5x+D3AIOMHxsc+HryYSymqRjX1si62dG2g3j6B51xfIeFmdiRjRdTkTA/HrR6g3hGCBUo8R1NaWdhIluROn+xkSqg3/PWV0g7ZOJGx95u0gdbU++7dO63wdF+qHvW2VJh6AuodN3pIvSPB/lIve8b2/hfUy/DUy2g/w6wn4uNKYEyOWxhH3zKoS70Nhvmvgac0Y2ubm5uXLl0isT569Ii+ak/HdaO1SnYadamXNTAlfVBvA7T3A761SvYhEZdQZh6g3tplStAb6r13797379/X1tamp6cbVPfzyVfay5f9aRuT454Y1SejmijqbTDMg4LDhw8vLS2RarVsp5x6w54OeAM321kuLw3yr7pB1hlNvfr8OEW9meAzNzix1EuSunHjBrmC/e5IBO39gEYJ+5RTZh6g3tplStAb6iWsr68vLy/fvHmzgZeMzudIJqe9yZGL7P5oDdQr2NnZWV1d/fDhw8rKCnFweUXDlDJLmSpa2Qyz+iu+gLk1i68W9Ur4x4ier/O9JpZ6v337NhgM6JMIuJakOgCo9z8YPytff/36JctGP0cm5kMzQoXN4I1pSU/Yies2ZYnqe5vvjw89cR+0aMmopJN652R6FfpFvYTd3V1i31evXhH71rK9KPVqdxOccI0uClfR31yMWvOBYqN1/nqIUW/JwbPOptGapq2UFYM6+fHjRz591EoukW0acpR69X5IND8aD+8mU6FLkENfXFw8dOjQy5cvCyMrZOM/f/4kZWjj/kjrSFhc3XCepl6S/tWrV0Wa9JU+WWfKqZdaIKGT4h05ckRHR2f3IPedWOpl0CLpypUrc3NztWJg2n9qU/KabDywMSIx3i9fvlAxmkaa2IyBmCQ47YoLqVdbpTQrFCDgdsTRff36ld2U+BZtyFpjx069PglC+53UWaCm3migxsyFIeNoV/P9qaRe8yvdhYNXckX78Z5RL4O8JNke/VHuJaPUqzkvpQAydSwXUlBtBimTy6uKMTn+mlnhRslPTEWslAbCRk6KdPz48Zk9aEbnIbAr8dTrE2W5+j9CvYxmkZXGR2485ywFnmctkRT1suxEf+oGnHW3+Q/j/Secehl1JSX+c2Njw+i5Hn40XVzbEVur+IE89Ua9iriUEuqlv00LXD1PvYYmqB1SD9NJ0Y2xU29wvk+cnWx3pIC4G1/GbJKkgB5APppX2Z8QowrpgDSr/Tv3SrqtzbKEemkfGQ4aBoMBrX/J9lZWVmizki/s55NnRssrDDOKLhDUWtiINRpoItFcvnxZLEoyYPWTHlGDjxqAj6noHH6vq3rI/i6sDEZFvQaaPteKpx1EddIgn76zs/P06dO6Uc1MthRDFEwvg/gnnerMEOrVmc/eUTag3mg/hWBKqJdMb3d3d3/FRB1YXV2lz5IYmPhPPXUm4UM8qnaYTHL+MS1DmVEDofbpXia/xBhdhnrDsFFLTIurRylTyEWGICRtXJmIe+zUazym3/GYKeAOychNcFLfyK9i8iOp7E9IU69PxjFKYHIXC6mXNpH7bkh1QR0m+yfSJeolAs4Xji4/ZcJ5lvxOTkcyZNdrxFrCSUa5oyanw90+HGTa1xd1GNl3TJoyfTDUGz1v1hdrUe9BVCcN5pX5+Xli31ppfZlMK30wzAqgi0XdS1BrMhEE6yR9lfJCvWbf7KmXSrIVROXILVML1Fol9T579uz169f7LagakjI7JTPDeitppMCzqtcl/ignlBmIKVNCvT4VIL9b9VzGtUwATI+0i7PeVIqNPjgxgxdRZZ5b1y3LEiPTyZKUnxT1GtF6ZjUutZcBZ17t0taKsy0qt7whRr16JlOJTloKqUhGyuS8wuSplyEmJ6aSydzhBjMZGdrAzE31cFJPN/lu9DLNSoNTruom8kg6eiH1mp9Izbb2QNU3NjYyp/6sVHy4QARJAqWvC3sooV5pWUvcd+lABJxJRiQpkhetvM+fP19ZPqXAYuNhT9szYaeoHVW27yPD5dRrjNpwZIZ6tUyjxfSIekK9UgzUOybQOnd5eZnodm1tbW5urrBWPmN8tNRrmIx+OnHiROWuV0NHI9tQrw6BmDGCeg0arOcYOtm4POAcRZ566Ub3798nCcrbMEi+dJ04lalXVEWSMfNnvSER2Jxw6m0mqe6p1zwMJhmaoN4h6vXxRhOgSEWENMTT5ZMeQb3NUHedq5Gn3kzAWbinnHpNFkwoCzhr6HcQRgPOvnCUeuXQ5MyZM6bzJQHn/DD7BE6anZ6erhthDsNB5loB57qdFGGlXkQlzXoxpag3ikmmXmJcWnnPz8+TE6glqeiBXRi28UzA2ZwHl1Avl8z4cFDv/0kH/ul1Gbw5mpYb0bKL7UGLNu9bS6jXv27mH6fe9fX1wWBQd0ciyFOvV4DgkptS1GtyAoI7DZKNRZR6o+8OlDRFbsGkV4S/rw7WzwykiFNClGbhaIZT+VoPP8zeYHFxkTZS5MrJoTeorrOcmgWcw3D+LTVIS6XMEidFvZxo7XWP358l1GtCoL63E0u9p0+fps9a4S4zw2F4XWJsnA0zeixamRvlDcTk9AinjIp6zSG0vumBod4Qi8izyurBR2POet8QXF6ZjlHIjJf0R0eu/HO9qVqhv9RLW15i3GavsgoFryipfKggRb0mWqufqBNwrn+GeqNdSj1wbPqWp15RJKM5ZjiVL7P0w+zNw0W05SVX3mA9J9Mi09gs4CxZVxJwJnXNsG+UeuXVs/qBXeF7oV7qsI/tydcJf6UGSarZ8iiorZGJN0SJ1sAvrD1fegN58eKFUQb2Aynq5VuzhpRQr+mtea73wFBvGM7Eodm5cOGCH7yJFJlZ85tUlmsD6tX9AfW2R/l7s+Vrnqs0tP/iW+grVOXo0aP5gLMhfh8wNIbt/91Ninqlohl7dDiZx/+jw9wPSU4WzDa37q7X/Hcjfdbrs6AFnnr1qYQ+4pX/MNibgHNjiP9kx84XMxkS8jX62pnoVtUbiHYpVIVfwDJC6tXHyRNBvQAAAB3AvAeqHNElkUmzSi2bDPUa12levsEN4p8G9jtZoRuAegEA2H/of1ZT+fZmgbCp3zmlMpzNWx009Zq0gOBiyLxpw64X1NseoF4AAHqIyud6GUy9t27d8lk2QAqg3vYA9QIAAAA1AOptD1AvAAAAUAOg3vYA9QIAAABApwD1AgAAAECnAPUCAAAAQKcA9QIAAABApwD1AgAAAECn+ANgDRm+pfWAqwAAAABJRU5ErkJggg==)

```xml
<servlet>
    <servlet-name>PortalServlet</servlet-name>
    <servlet-class>cn.kirklin.servlet.PortalServlet</servlet-class>
</servlet>
<servlet-mapping>
    <servlet-name>PortalServlet</servlet-name>
    <url-pattern>/index.html</url-pattern>
</servlet-mapping>
```

### 创建ModelBaseServlet

这个类和Thymeleaf没有直接关系，我们使用这个基类，是为了避免每处理一个请求就创建一个Servlet。继承了ModelBaseServlet之后，就可以把同一个模块内处理各个请求的方法集中到同一个Servlet中。

```java
public class ModelBaseServlet extends ViewBaseServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 在doGet()方法中调用doPost()方法，这样就可以在doPost()方法中集中处理所有请求
        doPost(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 0.在所有request.getParameter()前面设置解析请求体的字符集
        request.setCharacterEncoding("UTF-8");

        // 1.从请求参数中获取method对应的数据
        String method = request.getParameter("method");

        // 2.通过反射调用method对应的方法
        // ①获取Class对象
        Class<? extends ModelBaseServlet> clazz = this.getClass();

        try {
            // ②获取method对应的Method对象
            Method methodObject = clazz.getDeclaredMethod(method, HttpServletRequest.class, HttpServletResponse.class);

            // ③打开访问权限
            methodObject.setAccessible(true);

            // ④通过Method对象调用目标方法
            methodObject.invoke(this, request, response);
        } catch (Exception e) {
            e.printStackTrace();

            throw new RuntimeException(e);
        }
    }

}
```

### 各个Servlet之间的继承关系

![./images](./assets/Thymeleaf/InheritanceRelationship.png)

## Thymeleaf页面th名称空间

![./images](./assets/Thymeleaf/thNameSpace.png)

## Thymeleaf语法

### th:xxx

| 属性名          | 作用                               |
| --------------- | ---------------------------------- |
| th:text         | 使用表达式设置文本标签体的数据     |
| th:属性名       | 使用表达式运算得到的值设置HTML属性 |
| th:if/th:unless | 分支判断                           |
| th:each         | 迭代                               |

### 直接写表达式

- 有转义效果：[[${表达式}]]
- 无转义效果：[(${表达式})]

### 表达式的类型

- @{}：给传入的字符串前面附加**『上下文路径』**
- ${}：解析OGNL表达式

### OGNL表达式

OGNL：Objects-Graph Navigation Language对象图导航语言

#### 起点

| 表达式起点描述  | 作用                       | 参考                             |
| --------------- | -------------------------- | -------------------------------- |
| 请求域属性名    | 根据属性名从请求域取出数据 |                                  |
| session         | 访问session域              |                                  |
| application     | 访问application域          |                                  |
| param           | 读取请求参数               |                                  |
| #strings        | 执行字符串的相关处理       | org.thymeleaf.expression.Strings |
| #lists          | 执行集合相关的处理         | org.thymeleaf.expression.Lists   |
| #request        | 原生的request对象          |                                  |
| #response       | 原生的response对象         |                                  |
| #session        | 原生的session对象          |                                  |
| #servletContext | 原生的ServletContext对象   |                                  |

#### 访问具体属性语法

| 对象类型                                     | 访问方式                        |
| -------------------------------------------- | ------------------------------- |
| 普通对象包含使用getXxx()、setXxx()定义的属性 | 对象.属性名                     |
| List集合                                     | [index]                         |
| 数组                                         | [下标]                          |
| Map集合                                      | map.key                         |
| 有方法的对象                                 | 对象.方法() 对象.方法(参数列表) |

### 包含代码片段页面

#### 声明代码片段

```html
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

    <!-- 使用th:fragment属性给代码片段命名 -->
    <div th:fragment="navigator">
        <a href="BookManagerServlet?method=showBookList" class="order">图书管理</a>
        <a href="order_manager.html" class="destory">订单管理</a>
        <a href="index.html" class="gohome">返回商城</a>
    </div>

</body>
</html>
```

#### 引入代码片段

| 引入方式                                          | 作用                                     |
| ------------------------------------------------- | ---------------------------------------- |
| th:insert="segment/admin-navigator :: navigator"  | 把目标代码片段整体包含到当前标签内部     |
| th:include="segment/admin-navigator :: navigator" | 把目标代码片段内部的内容包含到当前标签内 |
| th:replace="segment/admin-navigator :: navigator" | 使用目标代码片段替换当前标签             |

segment/admin-navigator代表目标代码片段的逻辑视图。

navigator代表目标代码片段中使用th:fragment指定的名称。

## 视图名称

### 物理视图

能够将请求转发到目标页面时使用的完整路径。

> /WEB-INF/view/hello.html

### 逻辑视图

物理视图=前缀+逻辑视图+后缀
