FROM ubuntu

RUN apt update -y \
  && apt install -y software-properties-common \
  && apt-add-repository ppa:ansible/ansible -y \
  && apt update -y \
  && apt install -y ansible \
  && apt install -y python-pip \
  && pip install pexpect

ENV ANSIBLE_GATHERING smart
ENV ANSIBLE_HOST_KEY_CHECKING false
ENV ANSIBLE_RETRY_FILES_ENABLED false
ENV ANSIBLE_ROLES_PATH /ansible/playbooks/roles
ENV ANSIBLE_SSH_PIPELINING True
ENV PYTHONPATH /ansible/lib
ENV PATH /ansible/bin:$PATH
ENV ANSIBLE_LIBRARY /ansible/library

WORKDIR /ansible/playbooks

