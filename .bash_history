passwd student
visudo
rm -rf .bash_history 
su student
poweroff
clear
yum install cri-o -y
systemctl start crio 
systemctl enable crio
yum install kubectl kubelet kubeadm -y 
systemctl daemon-reload
systemctl start kubelet
systemctl enable kubelet
kubeadm join 172.25.230.34:6443 --token 8smbll.itdr98yhntflot83 --discovery-token-ca-cert-hash sha256:f851e05244fe496126cb70ba3cecda7179d18f5b5cef1728a1d5686dda8728de 
