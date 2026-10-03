```html
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Women's Denim Wrap Dress | H.M Clothes</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f7f6f2;
            color: #111;
        }

        /* NAVBAR */

        nav {
            height: 75px;
            background: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 7%;
            border-bottom: 1px solid #ddd;
        }

        .logo {
            font-size: 28px;
            font-weight: bold;
            letter-spacing: 3px;
        }

        .logo span {
            font-weight: normal;
        }

        nav a {
            text-decoration: none;
            color: #111;
            margin-left: 30px;
            font-size: 14px;
            text-transform: uppercase;
        }

        nav a:hover {
            color: #777;
        }

        /* MAIN PRODUCT */

        .product-page {
            width: 88%;
            margin: 50px auto;
            display: grid;
            grid-template-columns: 55% 45%;
            gap: 50px;
            background: white;
            padding: 30px;
        }

        /* IMAGE */

        .product-image {
            height: 650px;
            overflow: hidden;
            background: #eee;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
        }

        /* PRODUCT DETAILS */

        .product-details {
            padding: 30px 20px;
        }

        .brand {
            font-size: 13px;
            letter-spacing: 3px;
            color: #777;
            text-transform: uppercase;
            margin-bottom: 15px;
        }

        .product-details h1 {
            font-size: 32px;
            font-weight: 500;
            line-height: 1.3;
            margin-bottom: 20px;
        }

        .rating {
            margin-bottom: 20px;
            font-size: 14px;
        }

        .stars {
            letter-spacing: 3px;
        }

        .price {
            font-size: 27px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .tax {
            color: #777;
            font-size: 13px;
            margin-bottom: 30px;
        }

        .line {
            border: none;
            border-top: 1px solid #ddd;
            margin: 25px 0;
        }

        /* SIZE */

        .size-title {
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 15px;
        }

        .sizes {
            display: flex;
            gap: 10px;
            margin-bottom: 25px;
        }

        .sizes input {
            display: none;
        }

        .sizes label {
            width: 55px;
            height: 45px;
            border: 1px solid #aaa;
            display: flex;
            align-items: center;
            justify-content: center;
            cursor: pointer;
            font-size: 14px;
            transition: 0.2s;
        }

        .sizes label:hover {
            border-color: #111;
        }

        .sizes input:checked + label {
            background: #111;
            color: white;
            border-color: #111;
        }

        /* QUANTITY */

        .quantity {
            margin-bottom: 25px;
        }

        .quantity label {
            display: block;
            font-size: 14px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .quantity input {
            width: 80px;
            padding: 12px;
            border: 1px solid #aaa;
        }

        /* BUTTONS */

        .buttons {
            display: flex;
            gap: 10px;
        }

        .cart-btn,
        .buy-btn {
            flex: 1;
            padding: 16px;
            border: none;
            cursor: pointer;
            font-size: 13px;
            font-weight: bold;
            letter-spacing: 1px;
        }

        .cart-btn {
            background: #111;
            color: white;
        }

        .buy-btn {
            background: #eee;
            color: #111;
            border: 1px solid #111;
        }

        .cart-btn:hover {
            background: #444;
        }

        .buy-btn:hover {
            background: #111;
            color: white;
        }

        /* DESCRIPTION */

        .description {
            margin-top: 30px;
        }

        .description h3 {
            font-size: 16px;
            margin-bottom: 12px;
        }

        .description p {
            color: #666;
            line-height: 1.7;
            font-size: 14px;
        }

        /* DELIVERY */

        .delivery {
            background: #f5f4ef;
            padding: 20px;
            margin-top: 25px;
        }

        .delivery h3 {
            font-size: 15px;
            margin-bottom: 10px;
        }

        .delivery p {
            color: #666;
            font-size: 13px;
            line-height: 1.8;
        }

        /* VIDEO STYLE SECTION */

        .fashion-video {
            width: 88%;
            margin: 0 auto 60px;
            background: #111;
            color: white;
            padding: 50px;
            text-align: center;
        }

        .fashion-video h2 {
            font-size: 28px;
            margin-bottom: 10px;
        }

        .fashion-video p {
            color: #aaa;
            margin-bottom: 30px;
        }

        .video-box {
            max-width: 700px;
            height: 350px;
            margin: auto;
            position: relative;
            overflow: hidden;
            background:
                linear-gradient(
                    rgba(0,0,0,0.2),
                    rgba(0,0,0,0.5)
                ),
                url("https://n.nordstrommedia.com/it/9332308f-c0b9-42f2-a066-d09851359547.jpeg?h=368&w=240&dpr=2")
                center/cover;
        }

        .play-button {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);

            width: 75px;
            height: 75px;

            border-radius: 50%;
            border: 2px solid white;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 28px;
            background: rgba(0,0,0,0.5);
        }

        .video-text {
            position: absolute;
            bottom: 25px;
            left: 0;
            right: 0;

            font-size: 16px;
            letter-spacing: 2px;
        }

        /* TRUST */

        .trust {
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            width: 88%;
            margin: 0 auto 60px;
            gap: 20px;
        }

        .trust-box {
            background: white;
            padding: 30px;
            text-align: center;
        }

        .trust-box h3 {
            margin-bottom: 10px;
            font-size: 15px;
        }

        .trust-box p {
            color: #777;
            font-size: 13px;
            line-height: 1.6;
        }

        /* FOOTER */

        footer {
            background: #111;
            color: white;
            padding: 40px;
            text-align: center;
        }

        footer p {
            color: #888;
            font-size: 13px;
            margin-top: 10px;
        }

        /* RESPONSIVE */

        @media(max-width: 800px) {

            .product-page {
                grid-template-columns: 1fr;
            }

            .product-image {
                height: 500px;
            }

            .trust {
                grid-template-columns: 1fr;
            }

            .fashion-video {
                padding: 30px 15px;
            }

            .video-box {
                height: 300px;
            }

            nav {
                padding: 0 20px;
            }

            nav a {
                margin-left: 10px;
            }
        }

    </style>

</head>


<body>


<!-- NAVBAR -->

<nav>

    <div class="logo">
        H.M<span> CLOTHES</span>
    </div>

    <div>
        <a href="/hm">Home</a>
        <a href="/hm">Collection</a>
        <a href="#">Cart 🛒</a>
    </div>

</nav>


<!-- PRODUCT -->

<section class="product-page">


    <!-- PRODUCT IMAGE -->

    <div class="product-image">

        <img
        src="https://n.nordstrommedia.com/it/9332308f-c0b9-42f2-a066-d09851359547.jpeg?h=368&w=240&dpr=2"
        alt="Women's Denim Wrap Dress">

    </div>


    <!-- PRODUCT DETAILS -->

    <div class="product-details">

        <div class="brand">
            H.M Clothes
        </div>

        <h1>
            Women's Denim Wrap Dress - Light Blue
        </h1>

        <div class="rating">

            <span class="stars">
                ★★★★★
            </span>

            &nbsp; 4.8 | 126 Reviews

        </div>

        <div class="price">
            ₹5,999
        </div>

        <div class="tax">
            Inclusive of all taxes
        </div>

        <hr class="line">


        <!-- SIZE -->

        <div class="size-title">
            SELECT SIZE
        </div>

        <div class="sizes">

            <input type="radio"
                   id="xs"
                   name="size"
                   value="XS">

            <label for="xs">XS</label>


            <input type="radio"
                   id="s"
                   name="size"
                   value="S">

            <label for="s">S</label>


            <input type="radio"
                   id="m"
                   name="size"
                   value="M"
                   checked>

            <label for="m">M</label>


            <input type="radio"
                   id="l"
                   name="size"
                   value="L">

            <label for="l">L</label>


            <input type="radio"
                   id="xl"
                   name="size"
                   value="XL">

            <label for="xl">XL</label>

        </div>


        <!-- QUANTITY -->

        <div class="quantity">

            <label>
                QUANTITY
            </label>

            <input
                type="number"
                value="1"
                min="1"
                max="10">

        </div>


        <!-- BUTTONS -->

        <div class="buttons">

            <form action="/savedata" method="post">

                <input type="hidden"
                       name="productName"
                       value="Women's Denim Wrap Dress - Light Blue">

                <input type="hidden"
                       name="price"
                       value="5999">

                <button
                    class="cart-btn"
                    type="submit">

                    ADD TO CART

                </button>

            </form>

            <button class="buy-btn">
                BUY NOW
            </button>

        </div>


        <!-- DESCRIPTION -->

        <div class="description">

            <h3>
                PRODUCT DESCRIPTION
            </h3>

            <p>
                A stylish light-blue denim wrap dress designed
                for a modern and comfortable look. Perfect for
                casual outings, parties and everyday fashion.
            </p>

        </div>


        <!-- DELIVERY -->

        <div class="delivery">

            <h3>
                🚚 DELIVERY INFORMATION
            </h3>

            <p>
                Enter your location during checkout to check
                delivery availability and estimated delivery date.
            </p>

        </div>

    </div>

</section>


<!-- VIDEO STYLE SECTION -->

<section class="fashion-video">

    <h2>
        STYLE IT YOUR WAY
    </h2>

    <p>
        Discover the look behind our latest collection.
    </p>

    <div class="video-box">

        <div class="play-button">
            ▶
        </div>

        <div class="video-text">
            H.M CLOTHES — NEW COLLECTION
        </div>

    </div>

</section>


<!-- TRUST -->

<section class="trust">

    <div class="trust-box">

        <h3>
            ✓ QUALITY CHECKED
        </h3>

        <p>
            Carefully selected products with
            quality-focused standards.
        </p>

    </div>


    <div class="trust-box">

        <h3>
            🚚 FAST DELIVERY
        </h3>

        <p>
            Convenient delivery directly
            to your doorstep.
        </p>

    </div>


    <div class="trust-box">

        <h3>
            ↻ EASY RETURNS
        </h3>

        <p>
            Simple return experience for
            eligible products.
        </p>

    </div>

</section>


<!-- FOOTER -->

<footer>

    <strong>
        H.M CLOTHES
    </strong>

    <p>
        © 2026 H.M Clothes. All Rights Reserved.
    </p>

</footer>


</body>

</html>
```
