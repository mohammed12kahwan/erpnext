# 🎉 ERPNext 15 Development - جاهز للعمل مع GitHub

## ✅ النظام يعمل الآن:

```
✓ ERPNext 15          - يعمل على localhost:8000
✓ قاعدة البيانات     - يعمل على localhost:3306
✓ Redis              - يعمل على localhost:6379
✓ GitHub Ready       - جاهز للربط
```

---

## 🚀 ابدأ الآن بـ 3 خطوات:

### 1️⃣ افتح ERPNext في المتصفح:

```
http://localhost:8000
```

**بيانات الدخول:**
- Username: `Administrator`
- Password: `admin`

---

### 2️⃣ استخرج Source Code (اختر أحد الخيارين):

#### خيار A - السهل (استخدم EXTRACT_SOURCE.bat):

```powershell
cd C:\Users\ADMIN\erpnext-dev
.\EXTRACT_SOURCE.bat
```

#### خيار B - يدويّاً:

```powershell
cd C:\Users\ADMIN\erpnext-dev
docker cp erpnext_dev:/home/frappe/frappe-bench/apps/frappe ./frappe
docker cp erpnext_dev:/home/frappe/frappe-bench/apps/erpnext ./erpnext
```

---

### 3️⃣ افتح في VS Code:

```powershell
cd C:\Users\ADMIN\erpnext-dev
code .
```

---

## 🌳 ربط GitHub (اختياري لكن موصى به):

### إذا أردت المساهمة في ERPNext:

#### الخطوة 1: عمل Fork

1. اذهب إلى: https://github.com/frappe/erpnext
2. اضغط **Fork**
3. اختر حسابك

#### الخطوة 2: Clone من Fork الخاص بك

```powershell
git clone https://github.com/YOUR_USERNAME/erpnext.git --branch version-15 erpnext_dev
cd erpnext_dev
```

**استبدل `YOUR_USERNAME` باسم حسابك**

#### الخطوة 3: إعداد Git

```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@gmail.com"
```

#### الخطوة 4: اعمل على Branch جديد

```powershell
git checkout -b feature/my-feature
```

#### الخطوة 5: بعد التطوير، اعمل Commit و Push

```powershell
git add .
git commit -m "Add my feature"
git push origin feature/my-feature
```

#### الخطوة 6: اعمل Pull Request

1. اذهب إلى: https://github.com/YOUR_USERNAME/erpnext
2. اضغط **Pull Requests** > **New Pull Request**
3. اختر Branch الخاص بك
4. اضغط **Create Pull Request**

---

## 📂 هيكل المشروع:

```
C:\Users\ADMIN\erpnext-dev\
├── frappe/              ← Frappe Framework source
├── erpnext/             ← ERPNext source
├── docker-compose.yml   ← Database config
├── EXTRACT_SOURCE.bat   ← Auto-extract script
├── GITHUB_GUIDE.md      ← GitHub integration guide
└── [Other files]
```

---

## 💻 الملفات المهمة:

| الملف | الوصف |
|-----|-------|
| `GITHUB_GUIDE.md` | دليل شامل لـ GitHub |
| `GITHUB_SETUP_FINAL.txt` | ملخص التكامل مع GitHub |
| `EXTRACT_SOURCE.bat` | استخرج الملفات تلقائياً |
| `QUICK_START.txt` | مرجع سريع |

---

## 🔗 روابط مهمة:

- **ERPNext Repository**: https://github.com/frappe/erpnext
- **Frappe Repository**: https://github.com/frappe/frappe
- **Your GitHub Profile**: https://github.com/YOUR_USERNAME
- **ERPNext Docs**: https://docs.erpnext.com
- **Contributing Guide**: https://github.com/frappe/erpnext/blob/develop/CONTRIBUTING.md

---

## ✨ ما يمكنك فعله الآن:

✅ تعديل الكود مباشرة في VS Code
✅ رؤية التغييرات فوراً على localhost:8000
✅ التتبع مع Git
✅ رفع تغييراتك إلى GitHub
✅ عمل Pull Request للمساهمة

---

## 🎊 الخلاصة:

**أنت الآن لديك:**
- ✅ ERPNext 15 يعمل محلياً
- ✅ GitHub مجهز للربط
- ✅ VS Code مفتوح للتطوير
- ✅ قاعدة البيانات جاهزة
- ✅ كل شيء جاهز للبدء

**ابدأ الآن! 🚀**

1. افتح http://localhost:8000
2. استخرج الملفات
3. افتح في VS Code
4. ابدأ التطوير

**Happy Coding! 💻**
