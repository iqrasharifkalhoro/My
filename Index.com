<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iqra Kalhoro Collection | Modern Fashion</title>
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@500;700&family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #fdfbf9;
            color: #2b2b2b;
            line-height: 1.6;
            overflow-x: hidden;
        }

        h1, h2, h3, .brand-logo {
            font-family: 'Playfair Display', serif;
        }

        /* Top Announcement Bar */
        .top-bar {
            background-color: #1a1a1a;
            color: #fff;
            text-align: center;
            padding: 8px 12px;
            font-size: 12px;
            letter-spacing: 0.5px;
            font-weight: 300;
        }

        /* Responsive Navigation Bar */
        nav {
            background: #ffffff;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 5%;
            border-bottom: 1px solid #eee;
            position: sticky;
            top: 0;
            z-index: 100;
            flex-wrap: wrap;
            gap: 10px;
        }

        .brand-logo {
            font-size: 20px;
            font-weight: 700;
            letter-spacing: 1px;
            color: #111;
            text-decoration: none;
            text-transform: uppercase;
        }

        .nav-links {
            display: flex;
            list-style: none;
            gap: 15px;
            flex-wrap: wrap;
            align-items: center;
        }

        .nav-links a {
            text-decoration: none;
            color: #444;
            font-size: 13px;
            font-weight: 500;
            transition: color 0.3s;
            white-space: nowrap;
        }

        .nav-links a:hover {
            color: #c59b63;
        }

        /* Mobile specific navigation fix */
        @media (max-width: 768px) {
            nav {
                flex-direction: column;
                justify-content: center;
                text-align: center;
                padding: 12px 10px;
            }

            .brand-logo {
                margin-bottom: 8px;
                font-size: 19px;
            }

            .nav-links {
                justify-content: center;
                gap: 12px;
                width: 100%;
            }

            .nav-links a {
                font-size: 12px;
            }
        }

        /* Hero Banner */
        .hero {
            background: linear-gradient(rgba(0, 0, 0, 0.45), rgba(0, 0, 0, 0.45)), url('https://images.unsplash.com/photo-1490481651871-ab68de25d43d?auto=format&fit=crop&w=1400&q=80') center/cover no-repeat;
            min-height: 70vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            color: #ffffff;
            padding: 40px 20px;
        }

        .hero-content {
            max-width: 650px;
        }

        .hero-content h1 {
            font-size: 38px;
            margin-bottom: 15px;
            letter-spacing: 1px;
            line-height: 1.2;
        }

        .hero-content p {
            font-size: 15px;
            margin-bottom: 25px;
            font-weight: 300;
        }

        .btn-primary {
            display: inline-block;
            background: #c59b63;
            color: #fff;
            padding: 12px 30px;
            border-radius: 30px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
            transition: all 0.3s ease;
        }

        .btn-primary:hover {
            background: #ab824e;
            transform: translateY(-2px);
        }

        /* Section Styling */
        .section {
            padding: 50px 5%;
        }

        .section-title {
            text-align: center;
            font-size: 28px;
            margin-bottom: 8px;
            color: #111;
        }

        .section-subtitle {
            text-align: center;
            color: #777;
            font-size: 13px;
            margin-bottom: 35px;
        }

        /* Product Cards Grid */
        .product-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
            gap: 20px;
        }

        .product-card {
            background: #fff;
            border-radius: 12px;
            overflow: hidden;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.04);
            border: 1px solid #f0f0f0;
            transition: transform 0.3s;
            display: flex;
            flex-direction: column;
        }

        .product-card:hover {
            transform: translateY(-5px);
        }

        .product-img {
            width: 100%;
            height: 300px;
            object-fit: cover;
            background-color: #f5f5f5;
        }

        .product-details {
            padding: 18px;
            text-align: center;
            display: flex;
            flex-direction: column;
            flex-grow: 1;
            justify-content: space-between;
        }

        .product-category {
            font-size: 11px;
            color: #999;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 5px;
        }

        .product-title {
            font-size: 15px;
            font-weight: 600;
            margin-bottom: 8px;
            color: #222;
        }

        .product-price {
            font-size: 15px;
            color: #c59b63;
            font-weight: 600;
            margin-bottom: 15px;
        }

        .order-btn {
            background: #111;
            color: #fff;
            padding: 9px 16px;
            border-radius: 20px;
            text-decoration: none;
            font-size: 13px;
            transition: 0.3s;
            display: block;
        }

        .order-btn:hover {
            background: #c59b63;
        }

        /* Contact / Order Banner */
        .order-banner {
            background: #f4eee6;
            padding: 40px 20px;
            border-radius: 16px;
            margin: 30px 5%;
            text-align: center;
        }

        .order-banner h2 {
            font-size: 22px;
            margin-bottom: 10px;
        }

        .order-banner p {
            font-size: 14px;
            color: #555;
            margin-bottom: 20px;
        }

        .whatsapp-btn {
            background: #25d366;
            color: #fff;
            padding: 12px 26px;
            border-radius: 30px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
            display: inline-block;
            transition: 0.3s;
        }

        .whatsapp-btn:hover {
            background: #1ebc59;
        }

        /* Footer */
        footer {
            background: #111;
            color: #aaa;
            text-align: center;
            padding: 25px 15px;
            font-size: 12px;
        }

        footer p {
            margin-bottom: 5px;
        }
    </style>
</head>
<body>

    <!-- Announcement -->
    <div class="top-bar">
        Free Shipping Across Pakistan on Orders Above Rs. 3,000
    </div>

    <!-- Header Navigation -->
    <nav>
        <a href="#" class="brand-logo">Iqra Kalhoro Collection</a>
        <ul class="nav-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#shop">Collection</a></li>
            <li><a href="#contact">Order / WhatsApp</a></li>
        </ul>
    </nav>

    <!-- Hero Section -->
    <header id="home" class="hero">
        <div class="hero-content">
            <h1>Elegance In Every Stitch</h1>
            <p>Discover our exclusive pret, formal, and handcrafted traditional designs crafted for modern elegance.</p>
            <a href="#shop" class="btn-primary">Shop Latest Collection</a>
        </div>
    </header>

    <!-- Products Section -->
    <section id="shop" class="section">
        <h2 class="section-title">New Arrivals</h2>
        <p class="section-subtitle">Specially curated pieces designed with premium fabrics</p>

        <div class="product-grid">
            
            <!-- Item 1 -->
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1515886657613-9f3515b0c78f?auto=format&fit=crop&w=600&q=80" alt="Embroidered Kurti" class="product-img">
                <div class="product-details">
                    <div>
                        <p class="product-category">Pret Wear</p>
                        <h3 class="product-title">Embroidered Silk Kurti</h3>
                        <p class="product-price">PKR 4,500</p>
                    </div>
                    <a href="#contact" class="order-btn">Order Now</a>
                </div>
            </div>

            <!-- Item 2 -->
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1539109136881-3be0616acf4b?auto=format&fit=crop&w=600&q=80" alt="Classic Long Dress" class="product-img">
                <div class="product-details">
                    <div>
                        <p class="product-category">Luxury Pret</p>
                        <h3 class="product-title">Flowy Long Shirt & Trousers</h3>
                        <p class="product-price">PKR 6,800</p>
                    </div>
                    <a href="#contact" class="order-btn">Order Now</a>
                </div>
            </div>

            <!-- Item 3 -->
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1572804013309-59a88b7e92f1?auto=format&fit=crop&w=600&q=80" alt="Formal Ensemble" class="product-img">
                <div class="product-details">
                    <div>
                        <p class="product-category">Festive Edition</p>
                        <h3 class="product-title">Chiffon Embroidered 3-Piece</h3>
                        <p class="product-price">PKR 9,200</p>
                    </div>
                    <a href="#contact" class="order-btn">Order Now</a>
                </div>
            </div>

            <!-- Item 4 -->
            <div class="product-card">
                <img src="https://images.unsplash.com/photo-1529139574466-a303027c1d8b?auto=format&fit=crop&w=600&q=80" alt="Summer Casuals" class="product-img">
                <div class="product-details">
                    <div>
                        <p class="product-category">Daily Casuals</p>
                        <h3 class="product-title">Printed Lawn Co-ord Set</h3>
                        <p class="product-price">PKR 3,600</p>
                    </div>
                    <a href="#contact" class="order-btn">Order Now</a>
                </div>
            </div>

        </div>
    </section>

    <!-- WhatsApp Order Call-to-Action -->
    <div id="contact" class="order-banner">
        <h2>Want Custom Stitching or Direct Orders?</h2>
        <p>Send a screenshot of the design you like on WhatsApp to place your order.</p>
        <a href="https://wa.me/923000000000" target="_blank" class="whatsapp-btn">Message on WhatsApp</a>
    </div>

    <!-- Footer -->
    <footer>
        <p>© 2026 Iqra Kalhoro Collection. All Rights Reserved.</p>
    </footer>

</body>
</html>
