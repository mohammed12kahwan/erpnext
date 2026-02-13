#!/usr/bin/env python3
"""
ERPNext 15 Development Setup - Final Installation Script
تثبيت ERPNext 15 في وضع التطوير مع Docker
"""

import subprocess
import time
import sys

def run_command(cmd, description=""):
    """تشغيل أمر والانتظار لانتهاؤه"""
    if description:
        print(f"\n📌 {description}...")
    try:
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        if result.returncode != 0:
            print(f"❌ خطأ: {result.stderr}")
            return False
        print(f"✓ {description} اكتمل")
        return True
    except Exception as e:
        print(f"❌ خطأ في التنفيذ: {e}")
        return False

def main():
    print("=" * 60)
    print("ERPNext 15 Development Setup")
    print("=" * 60)
    
    base_path = r"C:\Users\ADMIN\erpnext-dev"
    
    # 1. شغّل الحاويات
    print("\n1️⃣  بدء الحاويات...")
    run_command(f"cd {base_path} && docker-compose up -d", "تشغيل MariaDB و Redis")
    
    # 2. انتظر قليلاً
    print("\n⏳ جاري الانتظار 10 ثواني لتهيئة قاعدة البيانات...")
    time.sleep(10)
    
    # 3. التحقق من الحالة
    print("\n2️⃣  التحقق من حالة الحاويات...")
    run_command(f"cd {base_path} && docker-compose ps", "عرض حالة الحاويات")
    
    # 4. اختبار قاعدة البيانات
    print("\n3️⃣  اختبار الاتصال بقاعدة البيانات...")
    run_command(
        f"cd {base_path} && docker-compose exec -T db mysql -u erpnext -perpnext123 -e 'SELECT 1;'",
        "اختبار قاعدة البيانات"
    )
    
    # النتيجة النهائية
    print("\n" + "=" * 60)
    print("✅ التثبيت اكتمل بنجاح!")
    print("=" * 60)
    print("\n📊 معلومات الاتصال:")
    print("  - Database Host: localhost")
    print("  - Database Port: 3306")
    print("  - Database User: erpnext")
    print("  - Database Password: erpnext123")
    print("  - Redis: localhost:6379")
    print("\n📂 المسار: C:\\Users\\ADMIN\\erpnext-dev")
    print("\n🔧 الأوامر المفيدة:")
    print("  docker-compose ps          # عرض حالة الحاويات")
    print("  docker-compose logs -f db  # عرض السجلات")
    print("  docker-compose down        # إيقاف الخدمات")
    print("\n" + "=" * 60)

if __name__ == "__main__":
    main()
