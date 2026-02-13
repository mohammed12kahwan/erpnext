# ERPNext 15 Development with Docker

هذا الإعداد يستخدم صور Frappe الرسمية (أسرع وأخف)

## البدء السريع

```bash
cd C:\Users\ADMIN\erpnext-dev
docker-compose up -d
```

انتظر 2-3 دقائق، ثم افتح:
```
http://localhost:8000
```

### تسجيل الدخول
- **اسم المستخدم**: Administrator
- **كلمة المرور**: admin

## الأوامر المفيدة

### عرض حالة الحاويات
```bash
docker-compose ps
```

### عرض السجلات
```bash
docker-compose logs -f erpnext
```

### إيقاف جميع الخدمات
```bash
docker-compose down
```

### إعادة تشغيل
```bash
docker-compose restart
```

### تنفيذ أوامر Bench
```bash
docker-compose exec erpnext bench console
docker-compose exec erpnext bench --site development install-app [app_name]
```

## المتطلبات

- Docker Desktop (يعمل)
- 4GB RAM كحد أدنى
- 10GB مساحة قرص

## المنافذ

- **8000**: واجهة ERPNext الرئيسية
- **9000**: Socket IO (تحديثات فورية)
- **3306**: قاعدة البيانات

## استكشاف الأخطاء

### المشكلة: لم يفتح البرنامج بعد دقائق
الحل: شوف السجلات
```bash
docker-compose logs erpnext
```

### المشكلة: منفذ 8000 مشغول
عدّل docker-compose.yml:
```yaml
ports:
  - "8080:8000"  # استخدم 8080
```

### المشكلة: قاعدة البيانات لا تستجيب
```bash
docker-compose restart db
docker-compose logs db
```
