echo "
LogLevel DEBUG2
PermitRootLogin yes
PasswordAuthentication yes
Subsystem sftp /usr/lib/openssh/sftp-server
" > /etc/ssh/sshd_config

mkdir /run/sshd

useradd -m zhenlong && yes 123456 | passwd yckj