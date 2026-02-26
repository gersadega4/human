FROM us-docker.pkg.dev/deeplearning-platform-release/gcr.io/tf-cpu.2-10:latest
WORKDIR /
# Installs hypertune library
RUN pip install cloudml-hypertune
# Copies the trainer code to the docker image.
COPY trainer /trainer
# Sets up the entry point to invoke the trainer.
ENTRYPOINT ["python", "-m", "trainer.task"]
