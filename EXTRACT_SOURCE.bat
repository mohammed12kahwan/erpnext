@echo off
chcp 65001 >nul

echo.
echo ====================================
echo Extract ERPNext Source Code
echo ====================================
echo.

echo Checking if erpnext_dev container is running...
docker ps | findstr erpnext_dev >nul
if errorlevel 1 (
    echo Error: Container 'erpnext_dev' is not running!
    echo Start it first with: docker run -d --name erpnext_dev ...
    pause
    exit /b 1
)

echo [OK] Container is running
echo.

echo Extracting Frappe Framework...
docker cp erpnext_dev:/home/frappe/frappe-bench/apps/frappe ./frappe
if errorlevel 1 (
    echo Error: Failed to extract Frappe!
    pause
    exit /b 1
)
echo [OK] Frappe extracted

echo.
echo Extracting ERPNext...
docker cp erpnext_dev:/home/frappe/frappe-bench/apps/erpnext ./erpnext
if errorlevel 1 (
    echo Error: Failed to extract ERPNext!
    pause
    exit /b 1
)
echo [OK] ERPNext extracted

echo.
echo ====================================
echo Source code extracted successfully!
echo ====================================
echo.

echo Files are now in:
echo - C:\Users\ADMIN\erpnext-dev\frappe\
echo - C:\Users\ADMIN\erpnext-dev\erpnext\
echo.

echo To open in VS Code:
echo   code .
echo.

pause
