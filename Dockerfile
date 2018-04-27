FROM centos:latest

# first install EPEL (Extra Packages for Enterprise Linux)
# because yum as a package manager does not include the latest version og nginx
# in its default repository 

RUN yum -y install epel-release

RUN yum -y install nginx

EXPOSE 80

#CMD ["nginx", "-c", "/etc/nginx/nginx.conf"]
CMD ["nginx", "-g", "daemon off;"]
