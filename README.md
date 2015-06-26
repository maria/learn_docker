# learn_docker
Docker tutorial for ROSEdu Summer School


### Install Docker on Ubuntu

- name: Add Docker repository key  
  `$ wget -qO - https://get.docker.io/gpg | apt-key add - `

- name: Add Docker repository  
  `$ sudo sh -c "echo deb http://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"`  
  `$ apt-get update`

- name: Install Docker  
  `$ apt-get install lxc-docker`
