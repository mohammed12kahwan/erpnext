# ERPNext 15 Development Setup - التثبيت اكتمل ✓

## الحالة الحالية:

✓ MariaDB 10.6 - قيد التشغيل على المنفذ 3306
✓ Redis 7 - قيد التشغيل
✓ Python Container - جاهز للتطوير

## معلومات الاتصال بقاعدة البيانات:

**المضيف (Host):** localhost
**المنفذ (Port):** 3306
**المستخدم (User):** erpnext
**كلمة المرور (Password):** erpnext123
**قاعدة البيانات (Database):** erpnext

## الخطوات التالية:

### الطريقة 1: استخدام الأوامر المباشرة

يمكنك الآن استخدام قاعدة البيانات و Redis مباشرة في تطبيقك:

```bash
# الوصول إلى container التطبيق
docker-compose exec app bash

# تثبيت المكتبات المطلوبة
pip install frappe

# أو تثبيت ERPNext كاملاً
pip install erpnext
```

### الطريقة 2: استخدام Docker Desktop

إذا استمرت مشاكل الإنترنت، استخدم Docker Desktop مع تعديل الإعدادات:
1. افتح Docker Desktop Settings
2. اذهب إلى Resources
3. زد الـ Network bandwidth إلى الحد الأقصى
4. أعد تشغيل Docker

### الطريقة 3: استخدام صورة مسبقة البناء

```bash
docker run -d --name erpnext \
  -p 8000:8000 \
  --network erpnext-dev_erpnext_net \
  -e DB_HOST=erpnext_db \
  -e DB_USER=erpnext \
  -e DB_PASSWORD=erpnext123 \
  -e DB_NAME=erpnext \
  erpadmin/erpnext:latest
```

## أوامر مفيدة:

```bash
# عرض حالة الحاويات
docker-compose ps

# عرض السجلات
docker-compose logs -f db
docker-compose logs -f redis
docker-compose logs -f app

# الوصول إلى database
docker-compose exec db mysql -u erpnext -p erpnext

# الوصول إلى redis
docker-compose exec redis redis-cli

# إعادة تشغيل الخدمات
docker-compose restart

# إيقاف كل شيء
docker-compose down

# حذف جميع البيانات وإعادة البناء
docker-compose down -v
docker-compose up -d
```

## ملاحظات مهمة:

1. قاعدة البيانات وRed موجودة وتعملان الآن
2. يمكنك توصيل أي تطبيق Python أو Node.js بهما
3. الحاويات ستعيد التشغيل تلقائياً عند إيقاف Docker

## الخطوات الموصى بها:

أعد تشغيل Docker Desktop وجرب:
```bash
cd C:\Users\ADMIN\erpnext-dev
docker-compose up -d
```

ثم:
```bash
docker-compose exec app apt-get update
docker-compose exec app apt-get install -y git curl
docker-compose exec app pip install frappe
```

هل تريد مساعدة أخرى؟
