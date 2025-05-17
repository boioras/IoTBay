<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <title>Shop - IOTBAY</title>
  <link href="https://fonts.googleapis.com/css2?family=Helvetica&display=swap" rel="stylesheet" />
  <style>
    body {
      margin: 0;
      padding: 0;
      background-color: #f5f5f5;
      font-family: 'Helvetica', sans-serif;
      color: #333;
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      font-weight: 700;
      position: relative;
    }

    .header {
      background-image: url("IMG_0149.PNG");
      background-size: cover;
      background-position: center;
      height: 150px;
      position: relative;
    }

    .logo {
      position: absolute;
      top: 5px;
      left: 5px;
      width: 120px;
      height: auto;
    }

    .products {
      display: flex;
      justify-content: center;
      gap: 20px;
      padding: 40px;
      flex-wrap: wrap;
    }

    .product {
      background-color: white;
      width: 250px;
      height: 370px;
      padding: 20px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: space-between;
      border: 3px solid;
      border-radius: 10px;
      box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    }

    .product:nth-child(1) { border-color: #ff6b6b; }
    .product:nth-child(2) { border-color: #4ecdc4; }
    .product:nth-child(3) { border-color: #ffe66d; }

    .product img {
      max-width: 100%;
      max-height: 180px;
      object-fit: contain;
    }

    .btn {
      padding: 10px 20px;
      font-size: 16px;
      background-color: #888;
      border: none;
      color: #fff;
      cursor: pointer;
      border-radius: 8px;
      font-weight: 700;
      font-family: 'Helvetica', sans-serif;
      transition: background-color 0.3s ease, transform 0.2s;
    }

    .btn:hover {
      background-color: #666;
      transform: scale(1.05);
    }

    .logout-container {
      position: absolute;
      bottom: 20px;
      left: 20px;
    }

    .product-title {
      font-size: 18px;
      font-weight: 600;
      color: #444;
      margin: 10px 0;
      text-align: center;
    }
  </style>
</head>
<body>
  <div class="header">
    <img src="IoTBay Logo Design.PNG" alt="logo" class="logo" />
  </div>

  <div class="products">

    <div class="product">
      <img src="laptop.png" alt="HP Laptop" />
      <p class="product-title">HP Laptop</p>
      <form action="addToCart.jsp" method="post">
        <input type="hidden" name="product" value="HP Laptop" />
        <button class="btn" type="submit">Add to Cart</button>
      </form>
    </div>

    <div class="product">
      <img src="Mobile phone.png" alt="Asus Zenfone" />
      <p class="product-title">Asus Zenfone</p>
      <form action="addToCart.jsp" method="post">
        <input type="hidden" name="product" value="Asus Zenfone" />
        <button class="btn" type="submit">Add to Cart</button>
      </form>
    </div>

    <div class="product">
      <img src="nikon-camera-hfr.png" alt="Nikon HFR Camera" />
      <p class="product-title">Nikon HFR Camera</p>
      <form action="addToCart.jsp" method="post">
        <input type="hidden" name="product" value="Nikon HFR Camera" />
        <button class="btn" type="submit">Add to Cart</button>
      </form>
    </div>
  </div>

  <div class="logout-container">
    <form action="logout.jsp" method="post">
      <button class="btn" type="submit">Logout</button>
    </form>
  </div>
</body>
</html>
