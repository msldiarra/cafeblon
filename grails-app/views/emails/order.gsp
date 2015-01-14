<%@ page contentType="text/html" %>

<body>

    <h2>New order from www.cafeblon.ml</h2>

    <hr/>

    <span>Name:${name}</span><br/>
    <span>Phone:${phone}</span><br/>
    <span>Address:${adress}</span><br/>

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
        <g:each in="${products}" var="product">
            <tr>
                <td>${product.aroma}</td>
                <td>${product.count}</td>
                <td>${product.total}</td>
            </tr>
        </g:each>
            <tr>
                <td>+ Frais de livraison</td>
                <td colspan="2" align="right">1000</td>
            </tr>
    </tbody>
    </table>

</body>