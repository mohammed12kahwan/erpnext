# 🎊 ERPNext 15 - جاهز 100% للتطوير مع GitHub و Docker Hub

## ✅ الوضع الحالي:

```
✓ ERPNext 15              - يعمل على localhost:8000
✓ Database (MariaDB)      - يعمل على localhost:3306
✓ Redis                   - يعمل على localhost:6379
✓ Google Account          - موحد لـ GitHub + Docker Hub
✓ كل المتطلبات           - جاهزة
```

---

## 🎯 خطط العمل (اختر واحداً)

### ✨ الخطة 1: البدء الفوري (الأسهل - 10 دقائق)

```powershell
# 1. استخرج الملفات
cd C:\Users\ADMIN\erpnext-dev
.\EXTRACT_SOURCE.bat

# 2. افتح في VS Code
code .

# 3. ابدأ التطوير على frappe\ و erpnext\ مباشرة
```

**النتيجة:** ملفات موجودة محلياً، تطوير فوري، لا حاجة لـ Git الآن

---

### 🌳 الخطة 2: الإعداد الاحترافي مع GitHub (الأفضل - 20 دقيقة)

#### أ) احصل على اسم GitHub الخاص بك:

```
اذهب إلى: https://github.com/settings/profile
ابحث عن: @username
مثال: @john_doe
```

#### ب) اعمل Fork لـ ERPNext:

```
1. اذهب إلى: https://github.com/frappe/erpnext
2. اضغط: Fork (الزر الأعلى يميناً)
3. اختر حسابك (يتم تلقائياً)
4. انتظر حتى ينتهي
```

#### ج) Clone من Fork الخاص بك:

```powershell
cd C:\Users\ADMIN\erpnext-dev

# استبدل YOUR_USERNAME باسم حسابك (مثل john_doe)
git clone https://github.com/YOUR_USERNAME/erpnext.git --branch version-15

cd erpnext

# إعداد Git
git config --global user.name "Your Full Name"
git config --global user.email "your.gmail@gmail.com"
```

#### د) افتح في VS Code:

```powershell
code .
```

**النتيجة:** نسخة مرتبطة بـ GitHub، جاهزة للـ Pull Requests

---

### 🐳 الخطة 3: إعداد Docker Hub أيضاً (متقدم - 30 دقيقة)

بعد إكمال الخطة 2، أضف Docker Hub:

#### أ) احصل على اسم Docker الخاص بك:

```
اذهب إلى: https://hub.docker.com/settings/profile
ابحث عن: username
```

#### ب) تسجيل دخول Docker:

```powershell
docker login

# سيفتح متصفح للتسجيل عبر Google
# استخدم: your.gmail@gmail.com
# اختر: Sign in with Google
```

#### ج) بناء صورة مخصصة (اختياري):

```powershell
# بناء صورة جديدة
docker build -t YOUR_DOCKER_USERNAME/erpnext-custom:v1.0 .

# نشرها على Docker Hub
docker push YOUR_DOCKER_USERNAME/erpnext-custom:v1.0
```

**النتيجة:** صورة Docker مخصصة على Docker Hub، جاهزة للمشاركة

---

## 📖 الملفات الإرشادية (بالترتيب)

| الملف | الغرض |
|-----|--------|
| **GITHUB_READY.md** | ابدأ هنا - دليل سريع |
| **UNIFIED_SETUP.md** | هذا الملف - إعداد موحد شامل |
| **GITHUB_GUIDE.md** | شرح مفصل لـ GitHub |
| **EXTRACT_SOURCE.bat** | استخراج الملفات تلقائياً |

---

## 🎯 ماذا بعد التطوير؟

### عند الانتهاء من التطوير:

#### إذا اخترت الخطة 1 (بدون GitHub):

```powershell
# فقط احفظ التغييرات محلياً
# لا حاجة لـ git
```

#### إذا اخترت الخطة 2 (مع GitHub):

```powershell
# 1. اعمل Commit
git add .
git commit -m "إضافة ميزة جديدة"

# 2. Push
git push origin version-15

# 3. اعمل Pull Request
# اذهب إلى: https://github.com/YOUR_USERNAME/erpnext
# اختر: Pull Requests > New Pull Request
# اختر: version-15 كـ base
# اكتب وصف التغييرات
# اضغط: Create Pull Request
```

#### إذا اخترت الخطة 3 (مع Docker Hub أيضاً):

```powershell
# 1. ختم الصورة (Tag)
docker tag my-erpnext-image YOUR_DOCKER_USERNAME/erpnext-prod:v1.0

# 2. نشر (Push)
docker push YOUR_DOCKER_USERNAME/erpnext-prod:v1.0

# 3. شاركها مع الفريق
# شارك الرابط: hub.docker.com/r/YOUR_DOCKER_USERNAME/erpnext-prod
```

---

## 💻 أوامر GitHub المهمة

```powershell
# اعرض branch الحالي
git branch

# تحديث من النسخة الرسمية
git fetch upstream version-15
git rebase upstream/version-15

# إلغاء التغييرات الأخيرة
git reset --hard HEAD

# اعرض السجل
git log --oneline

# انسخ commit معين
git cherry-pick <commit-hash>

# اعمل Stash للتغييرات المؤقتة
git stash
git stash pop
```

---

## 🔐 الأمان والخصوصية

### بيانات الاعتماد:

```powershell
# هذا آمن - يحفظ Windows كلمات المرور
git config --global credential.helper wincred

# تحقق من بيانات المحفوظة:
# Control Panel > Credential Manager > Windows Credentials
```

### SSH Keys (متقدم - اختياري):

إذا أردت أمان أفضل:

```powershell
# إنشاء SSH key
ssh-keygen -t ed25519 -C "your.gmail@gmail.com"

# أضفها إلى GitHub: https://github.com/settings/keys
# أضفها إلى Docker Hub: https://hub.docker.com/settings/security
```

---

## 📋 قائمة التحقق النهائية

قبل البدء، تأكد من:

- [ ] ERPNext يعمل على http://localhost:8000
- [ ] يمكنك تسجيل الدخول بـ Administrator / admin
- [ ] Docker يعمل بشكل طبيعي (`docker ps`)
- [ ] Git مثبت (`git --version`)
- [ ] VS Code مثبت
- [ ] اسم GitHub الخاص بك جاهز
- [ ] Gmail الخاص بك متصل بـ GitHub و Docker Hub

---

## 🚀 ابدأ الآن!

### الخيار السريع (دقائق):

```powershell
cd C:\Users\ADMIN\erpnext-dev
.\EXTRACT_SOURCE.bat
code .
```

### الخيار الاحترافي (دقائق):

```powershell
# احصل على اسم GitHub من https://github.com/settings/profile

# Clone من Fork الخاص بك
git clone https://github.com/YOUR_USERNAME/erpnext.git --branch version-15

cd erpnext

# إعداد Git
git config --global user.name "Your Name"
git config --global user.email "your.gmail@gmail.com"

# افتح VS Code
code .
```

---

## 🎉 النتيجة:

لديك الآن:
- ✅ ERPNext 15 يعمل محلياً
- ✅ Google Account موحد
- ✅ GitHub مرتبط
- ✅ Docker Hub جاهز
- ✅ بيئة تطوير كاملة
- ✅ جاهز لـ Pull Requests

**ابدأ التطوير الآن! 🚀**

---

## 📞 هل تحتاج مساعدة؟

اقرأ:
- `GITHUB_GUIDE.md` - للمساعدة مع Git و GitHub
- `UNIFIED_SETUP.md` - لـ Google Account و التكامل الموحد
- `QUICK_START.txt` - مرجع سريع

**Happy Coding! 💻**

---

*آخر تحديث: 2026-02-13*
*الحالة: ✅ جاهز 100% للتطوير*
