<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Planet</title>
</head>
<body>
    <section id="form">
        <h1>Welcome to Pizza Planet!</h1>
        <form method="POST" action="https://request-inspector.glitch.me/">
            <h3>Customer Info:</h3>
            <p>
                <label for="name">Name:</label>
                <input type="text" name="name" id="name">
                <label for="address">Delivery Address:</label>
                <input type="text" name="address" id="address">
            </p>
            <h3>Pizza Basics:</h3>
            <p>
                <label for="pizza-size">Pizza Size:</label>
                <select name="pizza-size" id="pizza-size">
                    <option value="small">Small</option>
                    <option value="medium" selected>Medium</option>
                    <option value="large">Large</option>
                    <option value="x-large" disabled>Extra Large</option>
                </select>
            </p>
            <p>
                <label for="crust-type">Crust:</label>
                <select name="crust-type" id="crust-type">
                    <option value="thin">Thin</option>
                    <option value="regular" selected>Regular</option>
                    <option value="deep-pan" disabled>Deep Pan</option>
                    <option value="stuffed">Stuffed</option>
                </select>
            </p>
            <p>
                <label for="sauce-type">Sauce Type:</label>
                <select name="sauce-type" id="sauce-type">
                    <option value="house" selected>House Sauce</option>
                    <option value="marinara">Marinara</option>
                    <option value="alfredo">Alfredo</option>
                </select>
            </p>
            <h3>Toppings:</h3>
            <p>
                <label for="olives">Olives</label>
                <input type="checkbox" name="topping" id="olives" value="olv">
                <label for="mushrooms">Mushrooms</label>
                <input type="checkbox" name="topping" id="mushrooms" value="msh">
                <label for="peppers">Peppers</label>
                <input type="checkbox" name="topping" id="peppers" value="ppr">
                <label for="pepperoni">Pepperoni</label>
                <input type="checkbox" name="topping" id="pepperoni" value="pni">
                <label for="sausage">Sausage</label>
                <input type="checkbox" name="topping" id="sausage" value="ssg">
            </p>
            <p>
                <label for="add-info">Additional Info:</label><br>
                <textarea name="add-info" id="add-info" style="width: 30%" placeholder="Any additional information?"></textarea>
            </p>
            <button type="submit">Submit!</button>
        </form>
        <hr>
    </section>
</body>
</html>
