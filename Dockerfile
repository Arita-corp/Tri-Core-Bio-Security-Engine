FROM nvidia/cuda:12.2.0-base-ubuntu22.04

# Install STEM dependencies
RUN apt-get update && apt-get install -y python3-pip git

# Install Bio-Informatics stack
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Set up Workspace
WORKDIR /surya_karthi_lab
COPY . .

CMD ["python3", "orchestrator.py"]
