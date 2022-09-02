## ansible install chkrootkit
本脚本支持在CentOS6/7/8、RedHat6/7/8、Rocky Linux 8、Alma Linux 8

1.在ansible服务器侧添加准备安装chkrootkit的服务器的hosts


$ cat /etc/ansible/hosts 
```
[chkrootkit]
172.26.37.141 ansible_ssh_user=root ansible_ssh_pass='123456'
```
2.下载ansible安装的playbook等文件

$ git clone git@github.com:arrow003/ansible_chkrootkit.git

$ cd ansible_chkrootkit

3.执行playbook

$ ansible-playbook ansible_chkrootkit.yaml

## 测试chkrootkit运行
测试chkrootkit运行
```
$ sh  /opt/chkrootkit-0.55/scripts/chkrootkit_exec.sh
```
查看chkrootkit运行结果
```
$ cat /var/log/chkrootkit/chkrootkit.log
```
查看chkrootkit cron设定状况
```
$ crontab -l
```
