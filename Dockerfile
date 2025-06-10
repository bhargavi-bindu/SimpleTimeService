# Use slim Python image
FROM python:3.11-slim

# Create a non-root user
RUN useradd -m appuser

# Set working directory
WORKDIR /home/appuser/app

# Copy files and set ownership
COPY --chown=appuser:appuser . .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Switch to non-root user
USER appuser

# Expose port
EXPOSE 5000

# Run the app
CMD ["python", "app.py"]

