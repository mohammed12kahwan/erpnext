#!/bin/bash
set -e

# ERPNext 15 Complete Development Setup Script

echo "=================================================="
echo "ERPNext 15 Development Environment Setup"
echo "=================================================="
echo ""

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

# Step 1: Start services
echo -e "${BLUE}[1/7] Starting Docker services...${NC}"
docker-compose up -d
echo -e "${GREEN}✓ Services started${NC}"
echo ""

# Wait for database to be healthy
echo -e "${BLUE}[2/7] Waiting for database to be ready...${NC}"
for i in {1..30}; do
    if docker-compose exec -T db mysqladmin ping -h localhost -u root -proot123 &> /dev/null; then
        echo -e "${GREEN}✓ Database is ready${NC}"
        break
    fi
    echo "Waiting... ($i/30)"
    sleep 2
done
echo ""

# Step 2: Check all services
echo -e "${BLUE}[3/7] Verifying all services are healthy...${NC}"
docker-compose ps
echo ""

# Step 3: Initialize database
echo -e "${BLUE}[4/7] Initializing database...${NC}"
docker-compose exec -T db mysql -u erpnext -perpnext123 -e "CREATE DATABASE IF NOT EXISTS erpnext;"
docker-compose exec -T db mysql -u erpnext -perpnext123 -e "SHOW DATABASES;"
echo -e "${GREEN}✓ Database initialized${NC}"
echo ""

# Step 4: Test Redis
echo -e "${BLUE}[5/7] Testing Redis...${NC}"
docker-compose exec -T redis-cache redis-cli ping
docker-compose exec -T redis-queue redis-cli ping
echo -e "${GREEN}✓ Redis is working${NC}"
echo ""

# Step 5: Display configuration
echo -e "${BLUE}[6/7] System Configuration:${NC}"
echo "  Database Host:     localhost:3306"
echo "  Database User:     erpnext"
echo "  Database Password: erpnext123"
echo "  Database Name:     erpnext"
echo "  Redis Cache:       redis-cache:6379"
echo "  Redis Queue:       redis-queue:6379"
echo "  Frappe URL:        http://localhost:8000"
echo "  Socket.IO:         http://localhost:9000"
echo ""

# Step 6: Final status
echo -e "${BLUE}[7/7] Setup Complete!${NC}"
echo ""
echo -e "${GREEN}=================================================="
echo "✓ ERPNext 15 Development Environment Ready"
echo "==================================================${NC}"
echo ""
echo -e "${YELLOW}Next Steps:${NC}"
echo "1. Access the container:"
echo "   docker-compose exec frappe bash"
echo ""
echo "2. Initialize bench (first time only):"
echo "   cd /home/frappe/frappe-bench"
echo "   bench init ."
echo ""
echo "3. Create new site:"
echo "   bench new-site development.local --db-type=mariadb"
echo ""
echo "4. Install ERPNext:"
echo "   bench install-app erpnext"
echo ""
echo "5. Start the development server:"
echo "   bench start"
echo ""
echo "6. Open in browser:"
echo "   http://localhost:8000"
echo ""
echo -e "${YELLOW}Useful Commands:${NC}"
echo "  docker-compose ps              # Show container status"
echo "  docker-compose logs -f frappe  # View logs"
echo "  docker-compose exec frappe bash # Access container"
echo "  docker-compose down            # Stop services"
echo "  docker-compose down -v         # Stop and remove data"
echo ""
