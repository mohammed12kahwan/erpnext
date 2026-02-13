# 🎉 ERPNext 15 - READY TO USE

## ✅ النظام يعمل الآن!

### 🌐 الوصول للتطبيق من المتصفح:

```
http://localhost:8000
```

### 👤 بيانات الدخول:

- **اسم المستخدم**: Administrator  
- **كلمة المرور**: admin

---

## 🔗 ربط Visual Studio Code مع Source Code

### الخطوة 1: استخراج Source Code من الحاوية

```bash
cd C:\Users\ADMIN\erpnext-dev

# استخراج ERPNext Source Code
docker-compose exec web bash -c "cd /home/frappe/frappe-bench && tar -czf /tmp/erpnext.tar.gz apps/erpnext apps/frappe"

# نسخ إلى جهازك
docker-compose exec web cp /tmp/erpnext.tar.gz /home/frappe/frappe-bench/sites/
```

### الخطوة 2: فك الضغط

```bash
# في مجلد المشروع
tar -xzf erpnext.tar.gz
```

### الخطوة 3: فتح في Visual Studio Code

```bash
# في VS Code
File > Open Folder > اختر مجلد erpnext-dev
```

---

## 📁 هيكل المشروع

```
C:\Users\ADMIN\erpnext-dev\
├── docker-compose.yml       # تكوين الخدمات
├── mariadb.cnf              # إعدادات قاعدة البيانات
├── .env                     # متغيرات البيئة
├── apps/                    # source code (بعد extraction)
│   ├── erpnext/
│   └── frappe/
└── sites/                   # بيانات الموقع
    └── development.local/
```

---

## 🔧 الأوامر المفيدة

### تشغيل ERPNext:
```bash
cd C:\Users\ADMIN\erpnext-dev
docker-compose up -d
```

### عرض السجلات:
```bash
docker-compose logs -f web
```

### الوصول للـ Console:
```bash
docker-compose exec web bench console
```

### تثبيت تطبيق جديد:
```bash
docker-compose exec web bench --site development.local install-app [app-name]
```

### إيقاف النظام:
```bash
docker-compose down
```

---

## 💻 اختيار الإصدار الصحيح من ERPNext

استخدمنا الإصدار: **frappe/erpnext:v15**

هذا الإصدار يشمل:
- ✓ Python 3.10+
- ✓ Node.js 18+
- ✓ Frappe Framework v15
- ✓ ERPNext v15
- ✓ جميع المكتبات المطلوبة

---

## 🎯 الخطوات التالية

### 1. فتح التطبيق:
```
http://localhost:8000
```

### 2. ربط الـ Source Code:
- استخراج الملفات من الحاوية
- فتح في VS Code
- ابدأ التطوير

### 3. إنشاء تطبيق جديد:
```bash
docker-compose exec web bench new-app [app-name]
```

### 4. نشر التطبيق:
```bash
docker-compose exec web bench --site development.local install-app [app-name]
```

---

## 📊 التحقق من النظام:

```bash
# تحقق من الخدمات
docker-compose ps

# جميع الخدمات يجب أن تكون UP
# - erpnext_db (healthy)
# - erpnext_redis_cache (healthy)
# - erpnext_redis_queue (healthy)
# - erpnext_web (up)
```

---

## 🚀 النظام جاهز للاستخدام الفوري!

**الآن**: افتح المتصفح واذهب إلى http://localhost:8000
