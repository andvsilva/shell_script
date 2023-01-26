#!/bin/bash

default_pwd='senha123';
groups='GRP_ADM GRP_VEN GRP_SEC';
dir_PUBLIC='/shared/public';
dir_GRP_ADM='/shared/adm';
dir_GRP_VEN='/shared/ven';
dir_GRP_SEC='/shared/sec';
users_GRP_ADM='carlos maria joao';
users_GRP_VEN='debora sebastiana roberto';
users_GRP_SEC='josefina amanda rogerio';

# system update, upgrade and install dependencies
apt update;
apt upgrade -y;
apt install openssl -y;

# remove residual configs
echo "Removing previous configs";
rm -r /shared;
for group in $groups; do
  users=users_$group;  
  groupdel $group;  
  for user in ${!users}; do
    userdel $user;
  done
done

# create public folder
echo "Creating public folder and setting its permissions";
mkdir -p $dir_PUBLIC;
chown root:root $dir_PUBLIC;
chmod 777 $dir_PUBLIC;

# create groups, users and folders
for group in $groups; do
  dir=dir_$group;
  users=users_$group;
  
  echo "Creating '$group' group";
  groupadd $group;

  echo "Creating '$group' folder and setting its permissions";
  mkdir -p ${!dir};
  chown root:$group ${!dir};
  chmod 770 ${!dir};
  
  for user in ${!users}; do
    echo "Creating user '$user' from '$group'";
    useradd $user -U -G $group -s /bin/bash -p $(openssl passwd -1 $default_pwd);
  done
done

echo "Finish"