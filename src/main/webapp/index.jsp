<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP</title>
</head>
<body>


    <form action="hello-servlet" method="get" >
        <fieldset style="display: inline-block; border-color: blue; border-width: 6px;border-radius: 25px; position: fixed; top: 50%;left: 50%;margin: -200px 0px 0px  -200px;">
            <legend>Форма регистрации</legend>
            <table>
            <tr>
                <td><strong><label>Имя:</label></strong></td>
                <td><input type="text" name="name"></td>
            </tr>
            <tr>
                <td><strong><label>Фамилия:</label></strong></td>
                <td><input type="text" name="surname"></td>
            </tr>
            <tr>
                <td><strong><label>Возраст:</label></strong></td>
                <td><input type="text" name="age"></td>
            </tr>
            <tr>
                <td><strong><label>Пол:</label></strong></td>
                <td>Женский <input type="radio" name="gender" value="Female">
                    Мужской <input type="radio" name="gender" value="Male">
                </td>
            </tr>
            <tr>
                <td><strong><label>Страна проживания:</label></strong></td>
                <td>
                    <select name="country">
                        <option value="Russia">Россия</option>
                        <option value="Belarus">Беларусь</option>
                        <option value="Japan">Япония</option>
                        <option value="China">Китай</option>
                        <option value="Germany">Германия</option>
                    </select>
                </td>
            </tr>
        </table>
        <br>
        </fieldset>
        <fieldset style="display: inline-block; border-color: blue; border-width: 6px;border-radius: 25px; position: fixed; top: 50%;left: 50%;margin: 10px 0px 0px  -250px;">
        <table style="border-width: thick">
            <caption>Арифметические действия</caption>
            <tr>
                <th>Первое число</th>
                <th>Второе число</th>
                <th>Операция</th>
            </tr>
            <tr>
                <td><input type="text" name="firstNum"></td>
                <td><input type="text" name="secondNum"></td>
                <td> <select name="arithmeticAction">
                    <option value="+">+</option>
                    <option value="-">-</option>
                    <option value="/">/</option>
                    <option value="*">*</option>
                    <option value="%">%</option>
                </select></td>
            </tr>
        </table>
        </fieldset>
        <input type="reset" style="position: fixed; top: 50%; left: 45%; margin: 120px 0px 0px 0px" >
        <input type="submit" style="position: fixed; top: 50%; left: 50%; margin: 120px 0px 0px 50px">
    </form>

<br/>
<!--<a href="hello-servlet">Hello Servlet</a>-->
</body>
</html>