# ربط GitHub مع ERPNext 15 للتطوير

## ✅ لديك حساب GitHub - ممتاز!

---

## 🔧 الطريقة الموصى بها - Clone من GitHub مباشرة

### الخطوة 1: افتح PowerShell و اذهب للمجلد

```powershell
cd C:\Users\ADMIN\erpnext-dev
```

### الخطوة 2: استخرج Source Code من Docker

```powershell
# استخرج Frappe و ERPNext من الحاوية
docker cp erpnext_dev:/home/frappe/frappe-bench/apps/frappe ./frappe
docker cp erpnext_dev:/home/frappe/frappe-bench/apps/erpnext ./erpnext
```

### الخطوة 3: افتح في VS Code

```powershell
code .
```

---

## 🌳 الطريقة المتقدمة - Clone من GitHub الخاص بك

### إذا كان لديك Fork من ERPNext أو Frappe:

#### الخطوة 1: إذهب للمجلد

```powershell
cd C:\Users\ADMIN\erpnext-dev
```

#### الخطوة 2: Clone من GitHub الخاص بك

```powershell
# استخرج Frappe أولاً (الإصدار الرسمي)
git clone https://github.com/frappe/frappe.git --branch version-15 frappe

# استخرج ERPNext من حسابك (إذا كان لديك Fork)
git clone https://github.com/YOUR_USERNAME/erpnext.git --branch version-15 erpnext
```

**استبدل `YOUR_USERNAME` باسم حسابك على GitHub**

#### الخطوة 3: إذا لم يكن لديك Fork، استخدم الرسمي:

```powershell
git clone https://github.com/frappe/erpnext.git --branch version-15 erpnext
```

#### الخطوة 4: افتح في VS Code

```powershell
code .
```

---

## 📝 إعداد Git للتطوير

### تكوين Git (إذا لم تفعل من قبل):

```powershell
git config --global user.name "Your Name"
git config --global user.email "your.email@gmail.com"
git config --global credential.helper wincred
```

---

## 🔀 إذا أردت رفع تغييراتك إلى GitHub

### الخطوة 1: عمل Fork للمستودع

1. اذهب إلى: https://github.com/frappe/erpnext
2. اضغط على **Fork** في الأعلى يميناً
3. اختر حسابك

### الخطوة 2: Clone من Fork الخاص بك

```powershell
cd C:\Users\ADMIN\erpnext-dev
git clone https://github.com/YOUR_USERNAME/erpnext.git --branch version-15 erpnext_fork
cd erpnext_fork
```

### الخطوة 3: أضف Upstream (المستودع الأصلي)

```powershell
git remote add upstream https://github.com/frappe/erpnext.git
```

### الخطوة 4: اعمل على Branch جديد

```powershell
git checkout -b feature/my-feature
```

### الخطوة 5: اعمل Commit لتغييراتك

```powershell
git add .
git commit -m "Add my feature"
```

### الخطوة 6: Push للـ Fork الخاص بك

```powershell
git push origin feature/my-feature
```

### الخطوة 7: اعمل Pull Request

1. اذهب إلى: https://github.com/YOUR_USERNAME/erpnext
2. اضغط على **Pull Requests**
3. اضغط على **New Pull Request**
4. اختر الـ Branch الخاص بك
5. اكتب وصف التغييرات
6. اضغط **Create Pull Request**

---

## 🔑 المتطلبات قبل البدء

تأكد من تثبيت:

1. **Git**: https://git-scm.com/download/win
2. **VS Code**: https://code.visualstudio.com
3. **Python** (للتطوير المباشر): https://python.org
4. **Node.js** (للـ Frontend): https://nodejs.org

---

## 📂 هيكل المشروع بعد Clone

```
C:\Users\ADMIN\erpnext-dev\
├── frappe/                 ← Frappe Framework
├── erpnext/                ← ERPNext Application
├── docker-compose.yml      ← قاعدة البيانات و Redis
└── [Other files]
```

---

## 💻 تطوير محلي

### بعد Clone، لتشغيل محلي:

```powershell
# ثبّت المتطلبات
pip install frappe-bench

# أنشئ Bench جديد
bench init frappe-bench

# انسخ الملفات
cp -r frappe frappe-bench/apps/
cp -r erpnext frappe-bench/apps/

# أنشئ موقع
cd frappe-bench
bench new-site development.local --db-type=mariadb

# ثبّت ERPNext
bench --site development.local install-app erpnext

# شغّل
bench start
```

ثم: http://localhost:8000

---

## 🔗 روابط مهمة

- GitHub Profile: https://github.com/YOUR_USERNAME
- ERPNext Repo: https://github.com/frappe/erpnext
- Frappe Repo: https://github.com/frappe/frappe
- ERPNext Docs: https://docs.erpnext.com
- Contributing Guide: https://github.com/frappe/erpnext/blob/develop/CONTRIBUTING.md

---

## ❓ أسئلة شائعة

**S: كيف أحدّث الـ Fork الخاص بي من الرسمي؟**
```powershell
git fetch upstream
git rebase upstream/version-15
git push origin version-15
```

**S: كيف أتراجع عن تغييراتي؟**
```powershell
git reset --hard HEAD
```

**S: كيف أحذف Branch؟**
```powershell
git branch -d feature/my-feature
```

---

**الآن أنت جاهز للتطوير على ERPNext مع GitHub! 🚀**

لأي مساعدة إضافية، اسأل!
