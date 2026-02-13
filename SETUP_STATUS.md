# ERPNext 15 Development Setup

يتم تحميل قاعدة البيانات و Redis الآن بنجاح!

## حالة النظام:

✓ MariaDB 11 - يعمل على المنفذ 3306
✓ Redis Cache - يعمل
✓ Redis Queue - يعمل

## الخطوات التالية:

نظراً لمشاكل التحميل من الإنترنت، اتبع هذا:

### الطريقة البديلة - استخدام صورة جاهزة:

1. إذا كان لديك الوقت، انتظر تحميل صورة ERPNext كاملة:
```bash
docker pull emdotenv/erpnext:latest
```

2. ثم شغّلها:
```bash
docker run -d --name erpnext_app \
  --network erpnext-dev_erpnext \
  -p 8000:8000 \
  -p 9000:9000 \
  -e DB_HOST=erpnext_db \
  -e DB_USER=erpnext \
  -e DB_PASSWORD=erpnext \
  -e DB_NAME=erpnext \
  emdotenv/erpnext:latest
```

### الطريقة السريعة - استخدام Docker بدون ERPNext مباشرة:

يمكنك الآن استخدام قاعدة البيانات و Redis التي تعمل لتطوير تطبيق خاص بك.

## معلومات الاتصال:

- **قاعدة البيانات**:
  - Host: localhost
  - Port: 3306
  - User: erpnext
  - Password: erpnext
  - Database: erpnext

- **Redis Cache**: localhost:6379
- **Redis Queue**: localhost:6379 (port مختلف في الكود)

## الخطوات الموصى بها:

1. أعد تشغيل Docker Desktop
2. جرب تحميل الصورة مرة أخرى
3. أو استخدم compose file محدّث

هل تريد مساعدة إضافية؟
