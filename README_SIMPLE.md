# 🚀 ERPNext 15 Development - أسهل و أسرع طريقة

## ✅ الحالة الحالية:

```
✓ قاعدة البيانات (MariaDB 10.6)   - يعمل على localhost:3306
✓ Redis                            - يعمل على localhost:6379
✓ جميع المتطلبات                  - محملة و جاهزة
✓ 50+ ملف توثيق و إعدادات           - موجودة
```

---

## 🎯 ابدأ الآن بطريقة واحدة فقط:

### 🔘 الطريقة الأسهل - استخدام START.bat

1. **افتح المجلد**: `C:\Users\ADMIN\erpnext-dev`
2. **ضاعف-اضغط** على ملف `START.bat`
3. **اختر الخيار** (1 أو 2)
4. **اتبع التعليمات**

---

## 📖 إذا كنت تفضل الكتابة يدويّاً:

### الخيار 1: التطوير المباشر (الأفضل)

**المتطلبات:**
- Python 3.10+ (من https://python.org)
- Node.js (من https://nodejs.org)

**الخطوات:**

```powershell
# 1. افتح PowerShell و اذهب للمجلد
cd C:\Users\ADMIN\erpnext-dev

# 2. ثبّت Frappe Bench
pip install frappe-bench

# 3. أنشئ Bench جديد
bench init frappe-bench
cd frappe-bench

# 4. اسحب التطبيقات
bench get-app https://github.com/frappe/frappe.git --branch version-15
bench get-app https://github.com/frappe/erpnext.git --branch version-15

# 5. أنشئ الموقع
bench new-site development.local --db-type=mariadb

# 6. ثبّت ERPNext
bench --site development.local install-app erpnext

# 7. شغّل الخادم
bench start
```

ثم افتح: **http://localhost:8000**

---

### الخيار 2: Docker المباشر (الأسرع)

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

انتظر 2-3 دقائق ثم افتح: **http://localhost:8000**

---

## 👤 بيانات الدخول (متساوية في الطريقتين):

```
اسم المستخدم: Administrator
كلمة المرور: admin
```

---

## 💻 فتح المصدر في VS Code:

```powershell
# بعد الانتهاء من الخطوات أعلاه:
code .
```

أو يدويّاً:
1. افتح VS Code
2. File > Open Folder
3. اختر: `C:\Users\ADMIN\erpnext-dev\frappe-bench`

---

## 🗄️ معلومات قاعدة البيانات:

```
Host: localhost
Port: 3306
User: erpnext
Password: erpnext
Database: erpnext
Engine: MariaDB 10.6
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

### إيقاف ERPNext من Docker:
```powershell
docker stop erpnext_dev
```

### حذف كل شيء (حذر!):
```powershell
docker-compose down -v
docker rm -f erpnext_dev
```

---

## ✨ ملفات المشروع:

```
C:\Users\ADMIN\erpnext-dev\
├── docker-compose.yml          ← تكوين قاعدة البيانات
├── START.bat                   ← ملف البدء السريع
├── START_HERE_SIMPLE.md        ← دليل بسيط جداً
├── EASIEST_SETUP.md            ← شرح مفصل
├── FINAL_SETUP_REPORT.md       ← تقرير شامل
├── SYSTEM_OPERATIONAL.md       ← حالة النظام
└── [+ 45 ملف توثيق آخر]
```

---

## 🎊 الخلاصة:

**جميع المتطلبات محملة و جاهزة!**

اختر طريقة واحدة من الأعلى و ابدأ التطوير الآن! 🚀

---

**الدعم السريع:**

❓ **السؤال**: هل يمكنني استخدام Windows بدلاً من Linux؟  
✅ **الإجابة**: نعم! Windows + Docker يعمل بشكل تام.

❓ **السؤال**: هل أحتاج لـ WSL2؟  
✅ **الإجابة**: Docker Desktop يتولى ذلك تلقائياً.

❓ **السؤال**: كم من الوقت يستغرق التشغيل؟  
✅ **الإجابة**: 2-3 دقائق للمرة الأولى، ثم ثوانٍ للمرات التالية.

---

**ابدأ الآن! 🎉**
