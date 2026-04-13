# Step 1: Base image
FROM python:3.9-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy only requirements first (optimization)
COPY requirements.txt .

# Step 4: Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy rest of files
COPY . .

# Step 6: Expose port (important for web apps)
EXPOSE 5000

# Step 7: Run app
CMD ["python", "app.py"]
