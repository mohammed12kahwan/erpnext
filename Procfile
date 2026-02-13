web: gunicorn --workers 4 --worker-class sync --bind 0.0.0.0:8000 frappe.app:app --timeout 120
socketio: node apps/frappe/socketio.js
worker_default: bench worker --queue default
worker_short: bench worker --queue short
worker_long: bench worker --queue long
scheduler: bench schedule
