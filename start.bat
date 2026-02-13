@echo off
chcp 65001 >nul

echo.
echo ====================================
echo ERPNext 15 - Easy Development Setup
echo ====================================
echo.

REM Check Docker
docker --version >nul 2>&1
if errorlevel 1 (
    echo Error: Docker is not installed!
    pause
    exit /b 1
)

echo [OK] Docker is installed

REM Check docker-compose
docker-compose --version >nul 2>&1
if errorlevel 1 (
    echo Error: docker-compose is not installed!
    pause
    exit /b 1
)

echo [OK] docker-compose is installed
echo.

REM User choice
echo Select an option:
echo.
echo 1 - Start database only (for direct development)
echo 2 - Start ERPNext with Docker (complete setup)
echo.

set /p choice="Your choice (1 or 2): "

if "%choice%"=="1" (
    echo.
    echo Starting database and Redis...
    docker-compose up -d
    timeout /t 5
    echo.
    echo [OK] Database is running on: localhost:3306
    echo [OK] Redis is running on: localhost:6379
    echo.
    echo Database credentials:
    echo - User: erpnext
    echo - Password: erpnext
    echo.
    docker-compose ps
) else if "%choice%"=="2" (
    echo.
    echo Starting ERPNext with Docker...
    echo This will take 2-3 minutes on first run...
    echo.
    
    docker run -d ^
      --name erpnext_dev ^
      -p 8000:8000 ^
      -p 9000:9000 ^
      -e DB_HOST=host.docker.internal ^
      -e DB_USER=erpnext ^
      -e DB_PASSWORD=erpnext ^
      -e REDIS_CACHE=host.docker.internal:6379 ^
      frappe/erpnext:v15 ^
      bash -c "bench new-site development.local --admin-password=admin --no-mariadb-socket && bench --site development.local install-app erpnext && bench start"
    
    echo.
    echo [WAIT] Initializing ERPNext (this takes 2-3 minutes)...
    timeout /t 180
    echo.
    echo [OK] ERPNext is running on: http://localhost:8000
    echo.
    echo Login credentials:
    echo - Username: Administrator
    echo - Password: admin
    echo.
) else (
    echo Invalid choice!
)

echo.
pause
