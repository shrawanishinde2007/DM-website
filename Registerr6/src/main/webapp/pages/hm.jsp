```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>H.M Clothes | Fashion Collection</title>

    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f8f7f4;
            color: #111;
        }

        /* ================= NAVBAR ================= */

        nav {
            height: 75px;
            background: #ffffff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 6%;
            border-bottom: 1px solid #ddd;
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .logo {
            font-size: 30px;
            font-weight: bold;
            letter-spacing: 3px;
        }

        .logo span {
            font-weight: normal;
        }

        nav ul {
            display: flex;
            list-style: none;
            gap: 35px;
        }

        nav ul li a {
            text-decoration: none;
            color: #111;
            font-size: 14px;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: 0.3s;
        }

        nav ul li a:hover {
            color: #777;
        }

        .nav-icons {
            display: flex;
            gap: 20px;
            font-size: 20px;
        }

        /* ================= HERO ================= */

        .hero {
            min-height: 550px;
            background:
                linear-gradient(rgba(0,0,0,0.25), rgba(0,0,0,0.25)),
                url("https://images.unsplash.com/photo-1445205170230-053b83016050")
                center/cover;

            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: white;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero-content p {
            font-size: 16px;
            letter-spacing: 4px;
            text-transform: uppercase;
            margin-bottom: 15px;
        }

        .hero-content h1 {
            font-size: 65px;
            font-weight: 700;
            letter-spacing: 3px;
            margin-bottom: 20px;
        }

        .hero-content span {
            display: block;
            font-size: 20px;
            margin-bottom: 30px;
        }

        .shop-btn {
            display: inline-block;
            padding: 14px 35px;
            background: white;
            color: black;
            text-decoration: none;
            font-size: 14px;
            font-weight: bold;
            letter-spacing: 1px;
            transition: 0.3s;
        }

        .shop-btn:hover {
            background: black;
            color: white;
        }

        /* ================= COLLECTION HEADER ================= */

        .collection {
            text-align: center;
            padding: 70px 20px 30px;
        }

        .collection p {
            color: #777;
            font-size: 13px;
            letter-spacing: 3px;
            text-transform: uppercase;
            margin-bottom: 12px;
        }

        .collection h2 {
            font-size: 38px;
            font-weight: 500;
            letter-spacing: 2px;
        }

        /* ================= PRODUCT GRID ================= */

        .container {
            width: 88%;
            margin: auto;
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
            padding: 30px 0 70px;
        }

        .product-card {
            background: white;
            overflow: hidden;
            transition: 0.3s;
            position: relative;
        }

        .product-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.12);
        }

        .product-image {
            height: 350px;
            overflow: hidden;
            position: relative;
        }

        .product-image img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: 0.5s;
        }

        .product-card:hover .product-image img {
            transform: scale(1.05);
        }

        .new-label {
            position: absolute;
            top: 15px;
            left: 15px;
            background: #111;
            color: white;
            padding: 7px 12px;
            font-size: 11px;
            letter-spacing: 1px;
            z-index: 2;
        }

        .product-info {
            padding: 18px;
        }

        .product-info h3 {
            font-size: 16px;
            font-weight: 500;
            margin-bottom: 8px;
        }

        /* ================= RATING ================= */

        .rating {
            color: #f5a623;
            font-size: 14px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        /* ================= SIZE ================= */

        .size {
            font-size: 14px;
            margin-bottom: 12px;
        }

        .size select {
            padding: 6px 12px;
            margin-left: 5px;
            border: 1px solid #ccc;
            background: white;
            cursor: pointer;
        }

        /* ================= PRICE ================= */

        .price {
            margin-bottom: 15px;
        }

        .old-price {
            color: #888;
            text-decoration: line-through;
            margin-right: 8px;
            font-size: 14px;
        }

        .new-price {
            font-size: 18px;
            font-weight: bold;
            color: #111;
            margin-right: 8px;
        }

        .discount {
            color: #e53935;
            font-size: 13px;
            font-weight: bold;
        }

        /* ================= ADD CART ================= */

        .add-cart {
            width: 100%;
            padding: 12px;
            background: #111;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 13px;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: 0.3s;
        }

        .add-cart:hover {
            background: #555;
        }

        /* ================= TRUST SECTION ================= */

        .trust-section {
            background: #111;
            color: white;
            padding: 60px 8%;
            display: grid;
            grid-template-columns: repeat(3, 1fr);
            gap: 30px;
            text-align: center;
        }

        .trust-box {
            padding: 20px;
        }

        .trust-box .icon {
            font-size: 30px;
            margin-bottom: 15px;
        }

        .trust-box h3 {
            font-size: 16px;
            margin-bottom: 10px;
            letter-spacing: 1px;
        }

        .trust-box p {
            color: #bbb;
            font-size: 13px;
            line-height: 1.7;
        }

        /* ================= NEWSLETTER ================= */

        .newsletter {
            text-align: center;
            padding: 70px 20px;
            background: #eeeae3;
        }

        .newsletter h2 {
            font-size: 32px;
            font-weight: 500;
            margin-bottom: 10px;
        }

        .newsletter p {
            color: #666;
            margin-bottom: 25px;
        }

        .newsletter input {
            width: 300px;
            padding: 14px;
            border: 1px solid #bbb;
            outline: none;
        }

        .newsletter button {
            padding: 14px 25px;
            border: none;
            background: #111;
            color: white;
            cursor: pointer;
        }

        /* ================= FOOTER ================= */

        footer {
            background: #111;
            color: white;
            padding: 50px 8% 20px;
        }

        .footer-container {
            display: grid;
            grid-template-columns: 2fr 1fr 1fr 1fr;
            gap: 40px;
        }

        .footer-box h3 {
            margin-bottom: 18px;
            font-size: 15px;
            letter-spacing: 1px;
        }

        .footer-box p,
        .footer-box a {
            color: #aaa;
            font-size: 13px;
            line-height: 2;
            text-decoration: none;
            display: block;
        }

        .footer-box a:hover {
            color: white;
        }

        .copyright {
            border-top: 1px solid #333;
            margin-top: 40px;
            padding-top: 20px;
            text-align: center;
            color: #777;
            font-size: 12px;
        }

        /* ================= RESPONSIVE ================= */

        @media(max-width: 1000px) {

            .container {
                grid-template-columns: repeat(2, 1fr);
            }

            .footer-container {
                grid-template-columns: repeat(2, 1fr);
            }
        }

        @media(max-width: 650px) {

            nav {
                padding: 0 20px;
            }

            nav ul {
                display: none;
            }

            .hero-content h1 {
                font-size: 42px;
            }

            .container {
                grid-template-columns: 1fr;
                width: 90%;
            }

            .trust-section {
                grid-template-columns: 1fr;
            }

            .footer-container {
                grid-template-columns: 1fr;
            }

            .newsletter input {
                width: 90%;
                margin-bottom: 10px;
            }
        }

    </style>

</head>

<body>

<!-- ================= NAVBAR ================= -->

<nav>

    <div class="logo">
        H.M<span> CLOTHES</span>
    </div>

    <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#collection">Women</a></li>
        <li><a href="#collection">Men</a></li>
        <li><a href="#collection">New Collection</a></li>
        <li><a href="#footer">Contact</a></li>
    </ul>

    <div class="nav-icons">
        ♡
        🛒
    </div>

</nav>


<!-- ================= HERO ================= -->

<section class="hero">

    <div class="hero-content">

        <p>H.M Clothes</p>

        <h1>NEW SEASON</h1>

        <span>Discover timeless fashion for every occasion.</span>

        <a href="#collection" class="shop-btn">
            SHOP NOW
        </a>

    </div>

</section>


<!-- ================= COLLECTION ================= -->

<section class="collection" id="collection">

    <p>H.M Clothes Collection</p>

    <h2>Latest Collection</h2>

</section>


<!-- ================= PRODUCTS ================= -->

<form action="/savedata" method="post">

<div class="container">


<!-- ================= PRODUCT 1 ================= -->

<div class="product-card">

    <div class="product-image">

        <span class="new-label">NEW</span>

        <img src="https://n.nordstrommedia.com/it/9332308f-c0b9-42f2-a066-d09851359547.jpeg?h=368&w=240&dpr=2"
             alt="Floral Summer Dress">

        <a href="${pageContext.request.contextPath}/product1"
           class="view-product">
           VIEW PRODUCT
        </a>

    </div>

    <div class="product-info">

        <h3>Women's Denim Wrap Dress - Light Blue</h3>

        <p class="rating">⭐ 4.5 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹6,999</span>
            <span class="new-price">₹5,999</span>
            <span class="discount">14% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Women's Denim Wrap Dress - Light Blue">

        <input type="hidden"
               name="price"
               value="5999">

        <input type="hidden"
               name="discount"
               value="14">

        <input type="hidden"
               name="rating"
               value="4.5">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 2 ================= -->

<div class="product-card">

    <div class="product-image">

        <span class="new-label">NEW</span>

        <img src="https://i.pinimg.com/736x/97/e2/a9/97e2a9585f1d2cbd2ab63a6bda8bcc97.jpg"
             alt="Casual Shirt">

    </div>

    <div class="product-info">

        <h3>Men's Varsity Jacket - Blue / Black</h3>

        <p class="rating">⭐ 4.3 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹9,999</span>
            <span class="new-price">₹8,000</span>
            <span class="discount">20% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Men's Varsity Jacket - Blue / Black">

        <input type="hidden"
               name="price"
               value="8000">

        <input type="hidden"
               name="discount"
               value="20">

        <input type="hidden"
               name="rating"
               value="4.3">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 3 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://logodix.com/logo/471603.jpgp"
             alt="Modern Jacket">

    </div>

    <div class="product-info">

        <h3>Women's Floral Print Summer Dress</h3>

        <p class="rating">⭐ 4.6 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹99,999</span>
            <span class="new-price">₹89,000</span>
            <span class="discount">11% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Women's Floral Print Summer Dress">

        <input type="hidden"
               name="price"
               value="89000">

        <input type="hidden"
               name="discount"
               value="11">

        <input type="hidden"
               name="rating"
               value="4.6">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 4 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://i.pinimg.com/736x/07/ab/ee/07abee8898c58d94357124f371b5efd1.jpg"
             alt="Party Mini Dress">

    </div>

    <div class="product-info">

        <h3>Men's Casual Sweatshirt - Brown</h3>

        <p class="rating">⭐ 4.2 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹7,990</span>
            <span class="new-price">₹6,790</span>
            <span class="discount">15% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Men's Casual Sweatshirt - Brown">

        <input type="hidden"
               name="price"
               value="6790">

        <input type="hidden"
               name="discount"
               value="15">

        <input type="hidden"
               name="rating"
               value="4.2">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 5 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://image.hm.com/content/dam/global_campaigns/season_03/men/start-page-assets/wk09/MF05262P01-4x5-wk09.jpg?imwidth=4800"
             alt="Wedding Dress">

    </div>

    <div class="product-info">

        <h3>Denim Wrap Shirt</h3>

        <p class="rating">⭐ 4.4 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹11,970</span>
            <span class="new-price">₹9,970</span>
            <span class="discount">17% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Denim Wrap Shirt">

        <input type="hidden"
               name="price"
               value="9970">

        <input type="hidden"
               name="discount"
               value="17">

        <input type="hidden"
               name="rating"
               value="4.4">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 6 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://i.pinimg.com/originals/c7/c4/b1/c7c4b112a471b8ed4b693f6976310677.jpg"
             alt="Daily Wear Outfit">

    </div>

    <div class="product-info">

        <h3>Peach Beige Tiered Ruffle Maxi Dress</h3>

        <p class="rating">⭐ 4.5 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹2,499</span>
            <span class="new-price">₹2,000</span>
            <span class="discount">20% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Peach Beige Tiered Ruffle Maxi Dress">

        <input type="hidden"
               name="price"
               value="2000">

        <input type="hidden"
               name="discount"
               value="20">

        <input type="hidden"
               name="rating"
               value="4.5">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 7 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://static.nike.com/a/images/t_web_pw_592_v2/f_auto/u_9ddf04c7-2a9a-4d76-add1-d15af8f0263d,c_scale,fl_relative,w_1.0,h_1.0,fl_layer_apply/7f2bd660-8f2f-4625-b0b5-4d3d6d646143/M+NK+TCH+DFADV+MAGNA+JERSEY.png"
             alt="New Year Party Dress">

    </div>

    <div class="product-info">

        <h3>Unisex Nike Mesh Long-Sleeve Raglan T-Shirt</h3>

        <p class="rating">⭐ 4.1 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹5,499</span>
            <span class="new-price">₹4,566</span>
            <span class="discount">17% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Unisex Nike Mesh Long-Sleeve Raglan T-Shirt">

        <input type="hidden"
               name="price"
               value="4566">

        <input type="hidden"
               name="discount"
               value="17">

        <input type="hidden"
               name="rating"
               value="4.1">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 8 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://quizclothing.pk/cdn/shop/files/WhatsApp_Image_2024-09-26_at_8.35.07_PM.jpg?v=1727433470"
             alt="Red Floral Dress">

    </div>

    <div class="product-info">

        <h3>Women's Minimal Workwear</h3>

        <p class="rating">⭐ 4.3 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹9,999</span>
            <span class="new-price">₹8,765</span>
            <span class="discount">12% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Women's Minimal Workwear">

        <input type="hidden"
               name="price"
               value="8765">

        <input type="hidden"
               name="discount"
               value="12">

        <input type="hidden"
               name="rating"
               value="4.3">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 9 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://www.thefashionisto.com/wp-content/uploads/2022/08/HM-Men-Denim-Capsule-Collection-2022-002.jpg"
             alt="Monsoon Jacket">

    </div>

    <div class="product-info">

        <h3>Men's Oversized Black Cropped Jacket + White Tee + Black Baggy Jeans - Streetwear Set</h3>

        <p class="rating">⭐ 4.6 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹24,999</span>
            <span class="new-price">₹20,899</span>
            <span class="discount">16% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Men's Oversized Black Cropped Jacket + White Tee + Black Baggy Jeans - Streetwear Set">

        <input type="hidden"
               name="price"
               value="20899">

        <input type="hidden"
               name="discount"
               value="16">

        <input type="hidden"
               name="rating"
               value="4.6">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 10 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://media1.popsugar-assets.com/files/thumbor/-jNaRsJL-ONf8bYOiARugouXyLw=/0x0:1536x2304/fit-in/1584x2376/filters:format_auto():upscale()/2020/10/07/895/n/1922564/0a8095505f7e252b926684.67231425_.jpg"
             alt="Men's Fashion Outfit">

    </div>

    <div class="product-info">

        <h3>Women's Houndstooth Double-Breasted Blazer - Check Print</h3>

        <p class="rating">⭐ 4.4 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹89,999</span>
            <span class="new-price">₹78,999</span>
            <span class="discount">12% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Women's Houndstooth Double-Breasted Blazer - Check Print">

        <input type="hidden"
               name="price"
               value="78999">

        <input type="hidden"
               name="discount"
               value="12">

        <input type="hidden"
               name="rating"
               value="4.4">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 11 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://image.hm.com/assets/hm/d3/3d/d33dad826191185b1ffb0b48b8df9720518b8ab7.jpg"
             alt="Formal Outfit">

    </div>

    <div class="product-info">

        <h3>Women's Casual Co-Ord - Red Half-Zip Anorak Jacket + Off-White Embroidered Wide-Leg Pants</h3>

        <p class="rating">⭐ 4.5 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹5,999</span>
            <span class="new-price">₹4,900</span>
            <span class="discount">18% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Women's Casual Co-Ord - Red Half-Zip Anorak Jacket + Off-White Embroidered Wide-Leg Pants">

        <input type="hidden"
               name="price"
               value="4900">

        <input type="hidden"
               name="discount"
               value="18">

        <input type="hidden"
               name="rating"
               value="4.5">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


<!-- ================= PRODUCT 12 ================= -->

<div class="product-card">

    <div class="product-image">

        <img src="https://image.hm.com/content/dam/global_campaigns/season_01/women/startpage-assets/wk06/WS11K-4x5-women-startpage-wk06.jpg?imwidth=4800g"
             alt="Summer Floral">

    </div>

    <div class="product-info">

        <h3>Women's Y2K Set - Oversized Grey Fuzzy Knit Sweater + Acid-Wash Baggy Jeans</h3>

        <p class="rating">⭐ 4.2 / 5</p>

        <p class="size">
            <strong>Size:</strong>
            <select name="size">
                <option value="S">S</option>
                <option value="M" selected>M</option>
                <option value="L">L</option>
                <option value="XL">XL</option>
            </select>
        </p>

        <p class="price">
            <span class="old-price">₹9,499</span>
            <span class="new-price">₹7,899</span>
            <span class="discount">17% OFF</span>
        </p>

        <input type="hidden"
               name="productName"
               value="Women's Y2K Set - Oversized Grey Fuzzy Knit Sweater + Acid-Wash Baggy Jeans">

        <input type="hidden"
               name="price"
               value="7899">

        <input type="hidden"
               name="discount"
               value="17">

        <input type="hidden"
               name="rating"
               value="4.2">

        <button class="add-cart" type="submit">
            Add to Cart
        </button>

    </div>

</div>


</div>

</form>


<!-- ================= TRUST SECTION ================= -->

<section class="trust-section">

    <div class="trust-box">

        <div class="icon">✓</div>

        <h3>QUALITY CHECKED</h3>

        <p>
            Every product is carefully selected
            for quality and customer satisfaction.
        </p>

    </div>


    <div class="trust-box">

        <div class="icon">🚚</div>

        <h3>FAST DELIVERY</h3>

        <p>
            Get your favourite fashion delivered
            safely to your doorstep.
        </p>

    </div>


    <div class="trust-box">

        <div class="icon">↻</div>

        <h3>EASY RETURNS</h3>

        <p>
            Simple and convenient return experience
            for eligible products.
        </p>

    </div>

</section>


<!-- ================= NEWSLETTER ================= -->

<section class="newsletter">

    <h2>Stay in Style</h2>

    <p>
        Subscribe to receive updates about our latest collection.
    </p>

    <input type="email" placeholder="Enter your email">

    <button>SUBSCRIBE</button>

</section>


<!-- ================= FOOTER ================= -->

<footer id="footer">

    <div class="footer-container">

        <div class="footer-box">

            <h3>H.M CLOTHES</h3>

            <p>
                Modern fashion designed for
                everyday confidence and style.
            </p>

        </div>


        <div class="footer-box">

            <h3>SHOP</h3>

            <a href="#">Women</a>
            <a href="#">Men</a>
            <a href="#">New Collection</a>
            <a href="#">Best Sellers</a>

        </div>


        <div class="footer-box">

            <h3>HELP</h3>

            <a href="#">Contact Us</a>
            <a href="#">Delivery</a>
            <a href="#">Returns</a>
            <a href="#">FAQ</a>

        </div>


        <div class="footer-box">

            <h3>FOLLOW US</h3>

            <a href="#">Instagram</a>
            <a href="#">Facebook</a>
            <a href="#">Pinterest</a>

        </div>

    </div>


    <div class="copyright">

        © 2026 H.M Clothes. All Rights Reserved.

    </div>

</footer>


</body>

</html>
```
