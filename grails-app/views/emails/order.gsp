<%@ page contentType="text/html" %>

<body>

    <h1>New order from Cafeblon.ml</h1>

    <hr/>

    <span>Name:${name}</span>
    <span>Phone:${phone}</span>
    <span>Address:${adress}</span>

    <hr/>

    <h2>Products</h2>

    <table>
    <thead>
        <tr>
            <th>Aroma</th>
            <th>Quantity</th>
            <th>price</th>
        </tr>
    </thead>
    <tfoot>
        <tr><td colspan="3" align="right">total: ${total}</td></tr>
    </tfoot>
    <tbody>
        <g:each in="${prodcuts}" var="product">
            <tr>
                <td>${product.aroma}</td>
                <td>${product.count}</td>
                <td>${product.price}</td>
            </tr>
        </g:each>
    </tbody>
    </table>

</body>