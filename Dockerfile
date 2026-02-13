FROM frappe/erpnext:v15

# Switch to root for installations
USER root

# Update system
RUN apt-get update && \
    apt-get install -y \
    git \
    curl \
    wget \
    vim \
    nano \
    htop \
    && rm -rf /var/lib/apt/lists/*

# Create necessary directories
RUN mkdir -p /home/frappe/frappe-bench && \
    chown -R frappe:frappe /home/frappe

# Switch back to frappe user
USER frappe

# Set working directory
WORKDIR /home/frappe/frappe-bench

# Expose ports
EXPOSE 8000 8001 9000

# Default command
CMD ["bash"]
