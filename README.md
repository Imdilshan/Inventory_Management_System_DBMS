# 🧾 Inventory Management System (Oracle SQL + PL/SQL)

### 📚 Overview
The **Inventory Management System** is a database-driven project built using **Oracle SQL** and **PL/SQL**.  
It provides an efficient way to manage stock, customers, transactions, and billing for a retail store or warehouse.

The project demonstrates database design principles such as normalization, foreign key constraints, referential integrity, and procedural automation using PL/SQL blocks.

---

## 🚀 Features

✅ Manage and store details of:
- Products, Brands, Categories, and Stores  
- Customers and their carts  
- Transactions and invoices  

✅ Automations using PL/SQL:
- **Check_Stock_Level** – checks if product stock is low  
- **Update_Stock_After_Sale** – updates product stock after a sale  

✅ Key highlights:
- Proper relational schema design  
- Referential integrity using `FOREIGN KEY` constraints  
- Sample data and working test cases  
- Works perfectly on **Oracle APEX** or **Oracle SQL Developer**

---

## 🗂️ Database Schema

**Main Tables:**
| Table Name | Description |
|-------------|-------------|
| Inv_User | Stores system users (admin, cashier) |
| Brands | Brand details (Apple, Samsung, etc.) |
| Categories | Product categories |
| Stores | Store details |
| Product | Product info with stock and price |
| Customer_Cart | Customer purchase session |
| Select_Product | Products added to a cart |
| Transaction_Details | Stores sales transaction info |
| Invoice | Final invoice details |

---

## ⚙️ Technologies Used
- **Oracle SQL** (DDL, DML)
- **PL/SQL** (Procedures & Blocks)
- **Oracle APEX SQL Workshop**  
- **SQL Developer** (optional)
- **GitHub** for version control

---

## 🧩 Installation & Setup

### 1️⃣ Clone this repository
```bash
git clone https://github.com/<your-username>/Inventory-Management-System.git
cd Inventory-Management-System
