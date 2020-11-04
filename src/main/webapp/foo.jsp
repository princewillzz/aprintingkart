<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <ul>
        <c:forEach items="${files}" var="file">
            <li>
                <p>Para</p>
                ${file}
                <img src="${file}" alt="img" style="height: 100px; width: 100px;">
                here here we here
                <br>

            </li>
        </c:forEach>

    </ul>

    <div>
        ${test}
        <img src="${test}" alt="img2" style="height: 100px; width: 100px;">
    </div>


</body>

</html>