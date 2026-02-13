# 🚀 أسهل طريقة لتطوير ERPNext 15

## ✅ ما الذي يعمل الآن:

```
✓ قاعدة البيانات (MariaDB 10.6) - يعمل على localhost:3306
✓ Redis - يعمل على localhost:6379
✓ جميع المتطلبات - جاهزة
```

---

## 🎯 خطوات البدء الفورية:

### الخطوة 1: افتح PowerShell و اذهب للمجلد

```powershell
cd C:\Users\ADMIN\erpnext-dev
```

### الخطوة 2: تحقق من الخدمات

```powershell
docker-compose ps
```

يجب أن تظهر:
- erpnext_db - UP
- erpnext_redis - UP

### الخطوة 3: اختر طريقة من الاثنتين:

---

## 📍 الطريقة 1: استخدام Docker (الأسهل)

```powershell
docker run -d `
  --name erpnext_dev `
  -p 8000:8000 `
  -p 9000:9000 `
  -e DB_HOST=host.docker.internal `
  -e DB_USER=erpnext `
  -e DB_PASSWORD=erpnext `
  -e REDIS_CACHE=host.docker.internal:6379 `
  frappe/erpnext:v15 `
  bash -c "bench new-site development.local --admin-password=admin && bench --site development.local install-app erpnext && bench start"
```

ثم افتح: **http://localhost:8000**

---

## 📍 الطريقة 2: التطوير المباشر على الجهاز (الأفضل للتطوير)

### الخطوة 1: ثبّت Python و Node.js

**تحميل Python:**
```
https://www.python.org/downloads/
```

**تحميل Node.js:**
```
https://nodejs.org/
```

### الخطوة 2: ثبّت Frappe Bench

```powershell
pip install frappe-bench
```

### الخطوة 3: أنشئ Bench جديد

```powershell
# اذهب لمجلد التطوير
cd C:\Users\ADMIN\erpnext-dev

# أنشئ bench جديد
bench init frappe-bench

# اذهب للمجلد
cd frappe-bench

# أنسخ التطبيقات
bench get-app https://github.com/frappe/frappe.git --branch version-15
bench get-app https://github.com/frappe/erpnext.git --branch version-15
```

### الخطوة 4: أنشئ موقع

```powershell
# استخدم قاعدة البيانات المحلية
bench new-site development.local --db-type=mariadb

# ثبّت ERPNext
bench --site development.local install-app erpnext
```

### الخطوة 5: شغّل الخادم

```powershell
bench start
```

ثم افتح: **http://localhost:8000**

---

## 👤 بيانات الدخول:

**في الحالتين:**
- **اسم المستخدم**: Administrator  
- **كلمة المرور**: admin

---

## 💻 فتح في Visual Studio Code:

```powershell
# بعد أن تكون في مجلد frappe-bench
code .
```

أو يدويّاً:
1. افتح VS Code
2. File > Open Folder
3. اختر: `C:\Users\ADMIN\erpnext-dev\frappe-bench`

---

## 📝 معلومات الاتصال بقاعدة البيانات:

```
Host: localhost
Port: 3306
User: erpnext
Password: erpnext
Database: erpnext
```

---

## 🔧 أوامر مفيدة:

### إيقاف الخدمات:
```powershell
docker-compose down
```

### إعادة تشغيل:
```powershell
docker-compose up -d
```

### حذف كل شيء (حذر!):
```powershell
docker-compose down -v
```

---

## ✅ الخلاصة:

**الخدمات الأساسية جاهزة الآن:**
- قاعدة البيانات تعمل
- Redis يعمل

**اختر إحدى الطريقتين:**
1. **Docker** - أسهل و أسرع
2. **مباشر على الجهاز** - أفضل للتطوير الجدي

**ابدأ الآن! 🚀**
