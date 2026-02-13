# 🎯 إعداد موحد - Google Account + GitHub + Docker Hub

## ✅ لديك حساب Google واحد يربط كل شيء

```
Google Account
     ↓
  ├─ GitHub (مرتبط)
  ├─ Docker Hub (مرتبط)
  └─ Gmail (البريد)
```

---

## 🔐 الفائدة:

✓ تسجيل دخول موحد في كل المنصات
✓ سهولة مشاركة الكود والصور
✓ أمان أفضل
✓ إدارة أسهل

---

## 📝 خطوات الإعداد الموحد

### الخطوة 1: تسجيل الدخول إلى GitHub بـ Google

```
1. اذهب إلى: https://github.com/login
2. اختر: "Sign in with Google" أو 
   "Create account with Google"
3. استخدم نفس Gmail الخاص بك
```

### الخطوة 2: تسجيل الدخول إلى Docker Hub بـ Google

```
1. اذهب إلى: https://hub.docker.com/login
2. اختر: "Sign in with Google" أو 
   "Sign up with Google"
3. استخدم نفس Gmail الخاص بك
```

### الخطوة 3: التحقق من الحسابات

**في GitHub:**
```
1. اذهب إلى: https://github.com/settings/profile
2. تحقق أن الحساب مرتبط بـ Google
3. اكتب اسم المستخدم الخاص بك (YOUR_USERNAME)
```

**في Docker Hub:**
```
1. اذهب إلى: https://hub.docker.com/settings/profile
2. تحقق أن الحساب مرتبط بـ Google
3. اكتب اسم المستخدم الخاص بك (DOCKER_USERNAME)
```

---

## 🚀 الاستخدام في التطوير

### في PowerShell - استخدام GitHub مع Google

```powershell
# 1. إعداد Git (من المرة الأولى)
git config --global user.name "Your Full Name"
git config --global user.email "your.gmail@gmail.com"
git config --global credential.helper wincred

# 2. Clone من GitHub الخاص بك
git clone https://github.com/YOUR_USERNAME/erpnext.git

# عند أول push، ستُطلب بيانات اعتماد Google
# اختر: Sign in with GitHub 
# ثم: Sign in with Google
# استخدم: your.gmail@gmail.com
```

### في PowerShell - استخدام Docker مع Google

```powershell
# 1. تسجيل الدخول إلى Docker Hub
docker login

# سيطلب منك:
# Username: YOUR_DOCKER_USERNAME
# Password: سيفتح متصفح لـ Google Sign In
# استخدم: your.gmail@gmail.com

# 2. بعد ذلك يمكنك push الصور
docker tag my-image YOUR_DOCKER_USERNAME/my-image
docker push YOUR_DOCKER_USERNAME/my-image
```

---

## 📋 اسم المستخدم الخاص بك

### GitHub:
```
اسم المستخدم (USERNAME): ?
البريد: your.gmail@gmail.com
```

**للعثور على اسم المستخدم:**
1. اذهب إلى: https://github.com/settings/profile
2. ابحث عن "@username"

### Docker Hub:
```
اسم المستخدم (USERNAME): ?
البريد: your.gmail@gmail.com
```

**للعثور على اسم المستخدم:**
1. اذهب إلى: https://hub.docker.com/settings/profile
2. ابحث عن username

---

## 🔄 عملية العمل الموصى بها

### يومياً في التطوير:

```powershell
# 1. التحديث من GitHub
cd C:\Users\ADMIN\erpnext-dev\erpnext
git pull origin version-15

# 2. التطوير (تعديل الملفات)
# استخدم VS Code وعدّل الملفات

# 3. Commit التغييرات
git add .
git commit -m "إضافة ميزة جديدة"

# 4. Push إلى GitHub
git push origin feature/my-feature

# 5. اعمل Pull Request عبر GitHub
# https://github.com/YOUR_USERNAME/erpnext/pulls
```

---

## 🔑 حفظ بيانات الاعتماد

### في Windows:

```powershell
# تفعيل حفظ كلمات المرور (يتم تلقائياً)
git config --global credential.helper wincred

# يحفظ Windows كلمات المرور في:
# Control Panel > Credential Manager > Windows Credentials

# لعرض المحفوظة:
# Control Panel > Credential Manager
# > Generic Credentials
# ابحث عن github.com أو docker
```

---

## 📚 الملفات الموصى بها للقراءة

اقرأ بهذا الترتيب:

1. **GITHUB_READY.md** - ابدأ هنا
2. **GITHUB_GUIDE.md** - شرح مفصل
3. **QUICK_START.txt** - مرجع سريع

---

## ✨ مميزات حسابك الموحد

✓ **تسجيل دخول واحد** لكل شيء
✓ **أمان أفضل** عبر Google 2FA
✓ **سهولة الاستعادة** عند نسيان كلمة المرور
✓ **مزامنة تلقائية** للإعدادات
✓ **دعم أفضل** من Google

---

## 🎯 الخطوة التالية

اختر أحد:

### خيار 1: البدء الفوري (أسهل)

```powershell
# 1. استخرج الملفات من Docker
cd C:\Users\ADMIN\erpnext-dev
.\EXTRACT_SOURCE.bat

# 2. افتح في VS Code
code .

# 3. ابدأ التطوير مباشرة
```

### خيار 2: إعداد GitHub أولاً (الأفضل)

```powershell
# 1. تأكد من اسمك على GitHub
# https://github.com/settings/profile

# 2. اعمل Fork
# https://github.com/frappe/erpnext > Fork

# 3. Clone من Fork الخاص بك
cd C:\Users\ADMIN\erpnext-dev
git clone https://github.com/YOUR_USERNAME/erpnext.git
cd erpnext

# 4. إعداد Git
git config --global user.name "Your Name"
git config --global user.email "your.gmail@gmail.com"

# 5. افتح في VS Code
code .
```

---

## 🐳 Push صور Docker (متقدم)

عندما تريد نشر صورة Docker الخاصة بك:

```powershell
# 1. بناء الصورة
docker build -t YOUR_DOCKER_USERNAME/erpnext-custom:latest .

# 2. تسجيل الدخول
docker login  # استخدم Google Sign In

# 3. Push الصورة
docker push YOUR_DOCKER_USERNAME/erpnext-custom:latest

# 4. شاركها على Docker Hub
# https://hub.docker.com/r/YOUR_DOCKER_USERNAME/erpnext-custom
```

---

## 🎉 الخلاصة

لديك الآن:

✅ حساب Google موحد
✅ GitHub + Docker Hub مرتبطين
✅ ERPNext 15 يعمل محلياً
✅ كل شيء جاهز للتطوير والنشر

**ابدأ الآن! 🚀**

```powershell
cd C:\Users\ADMIN\erpnext-dev
code .
```

استمتع بالتطوير! 💻

---

## ❓ أسئلة شائعة

**س: نسيت اسم GitHub الخاص بي؟**
ج: اذهب إلى https://github.com/settings/profile وابحث عن "@username"

**س: نسيت اسم Docker الخاص بي؟**
ج: اذهب إلى https://hub.docker.com/settings/profile

**س: كيف أغير البريد الإلكتروني؟**
ج: في GitHub: https://github.com/settings/emails
في Docker: https://hub.docker.com/settings/general

**س: هل يمكن استخدام عدة حسابات GitHub؟**
ج: نعم، لكن ستحتاج إلى SSH keys مختلفة لكل حساب

---

**الآن أنت جاهز 100%! 🎊**
