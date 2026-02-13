# 🎉 ERPNext 15 - أسهل طريقة للتطوير

## ✅ النظام الأساسي جاهز الآن!

**الموقع**: `C:\Users\ADMIN\erpnext-dev`

---

## 🚀 ابدأ بـ 3 خطوات فقط:

### 1️⃣ افتح PowerShell و اكتب:

```powershell
cd C:\Users\ADMIN\erpnext-dev
docker-compose ps
```

### 2️⃣ اختر أحد الخيارات:

#### خيار A: Docker (الأسهل - 2 دقيقة):

```powershell
docker run -d `
  --name erpnext `
  -p 8000:8000 `
  -e DB_HOST=host.docker.internal `
  -e DB_USER=erpnext `
  -e DB_PASSWORD=erpnext `
  -e REDIS_CACHE=host.docker.internal:6379 `
  frappe/erpnext:v15
```

ثم: `http://localhost:8000`

---

#### خيار B: مباشر على الجهاز (الأفضل للتطوير):

```powershell
# 1. ثبّت Python و Node.js

# 2. اكتب في PowerShell:
pip install frappe-bench

# 3. في المجلد:
cd C:\Users\ADMIN\erpnext-dev
bench init frappe-bench
cd frappe-bench

# 4. اسحب التطبيقات:
bench get-app https://github.com/frappe/frappe.git --branch version-15
bench get-app https://github.com/frappe/erpnext.git --branch version-15

# 5. أنشئ موقع:
bench new-site development.local --db-type=mariadb
bench --site development.local install-app erpnext

# 6. شغّل:
bench start
```

ثم: `http://localhost:8000`

---

### 3️⃣ ادخل البيانات:

```
Username: Administrator
Password: admin
```

---

## 📊 ما الذي يعمل الآن:

✅ MariaDB 10.6 - يعمل على localhost:3306
✅ Redis - يعمل على localhost:6379
✅ كل المتطلبات - محملة و جاهزة

---

## 💻 فتح في VS Code:

```powershell
cd C:\Users\ADMIN\erpnext-dev\frappe-bench
code .
```

---

**الآن ابدأ بأحد الخيارين! 🚀**

للمزيد من التفاصيل: اقرأ `EASIEST_SETUP.md`
