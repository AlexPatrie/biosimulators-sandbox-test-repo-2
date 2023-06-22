# Use the base Binder image
FROM python:3.9

# Install any additional packages or dependencies here
# For example, if you need numpy and pandas, you can uncomment the following lines:
# RUN conda install --quiet --yes numpy pandas

# Copy the contents of your repository to the Docker image
COPY . /home/jovyan/work

# Set the working directory
WORKDIR /home/jovyan/work

RUN pip install --no-cache-dir -r requirements.txt
# Specify the command to run when the container starts
CMD ["jupyter", "notebook", "--ip", "0.0.0.0"]