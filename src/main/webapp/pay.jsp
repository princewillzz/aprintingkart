<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>

    <div style="text-align: center;">

        <form action="pay" method="post">
            <button type="submit">pay</button>
        </form>

    </div>




    <div style="text-align: center;">
        <form action="paid" method="POST">
            <script src="https://checkout.razorpay.com/v1/checkout.js" data-key="rzp_test_oO5Nlz03qtxInq"
                data-amount="${amt}" data-currency="INR" data-order_id="${oid}" data-buttontext="Pay with Razorpay"
                data-name="Acme Corp"
                data-description="A Wild Sheep Chase is the third novel by Japanese author Haruki Murakami"
                data-image="https://example.com/your_logo.jpg" data-prefill.name="Ranjit Kumar"
                data-prefill.email="harshTiwari@example.com" data-theme.color="#F37254"></script><input type="hidden"
                custom="Hidden Element" name="hidden"></form>
    </div>

    <p>${oid}</p>
    <p>${amt}</p>
    <br>
    <p>
        ${Allorders}
    </p>

</body>

</html>