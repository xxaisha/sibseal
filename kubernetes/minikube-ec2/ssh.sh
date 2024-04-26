stepnya adalah :
1. masuk ke aws console
2. create keypair di menu keypair di aws console
3. otomatis nanti file .pem nya ke download di local kamu
4. trus lakuin chmod 400 ke file .pem itu
5. setelah itu jalanin perintah dicmd kmu: ssh-keygen -y -f  xxxxx.pem
6. copy ssh-rsa semua
7. masuk ke instance nya kamu via instance connect
8. trus jalanin perintah sudo vim .ssh/authorized_keys
9. paste kan ssh-rsa yg tadi kmu copy dr local kamu ke  authorized_keys
10. trus simpen file nya kalau pake vim pake :wq 
11. trus balik ke cmd kamu di local kmu jalanin perintah : ssh -i xxx.pem (public dns) 
12. contoh nya gini : ssh -i herwin-privy.pem ec2-user@ec2-3-84-111-35.compute-1.amazonaws.com