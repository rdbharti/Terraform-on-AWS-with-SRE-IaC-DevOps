{"filter":false,"title":"app2-install.sh","tooltip":"/10-ALB-Path-Based-Routing/terraform-manifests/app2-install.sh","ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":8,"column":80},"end":{"row":8,"column":80},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"hash":"08dd876fe276aaa421be660a68965b1c57f98ec5","mime":"application/x-sh","undoManager":{"mark":8,"position":8,"stack":[[{"start":{"row":0,"column":0},"end":{"row":11,"column":0},"action":"insert","lines":["#! /bin/bash","# Instance Identity Metadata Reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html","sudo yum update -y","sudo yum install -y httpd","sudo systemctl enable httpd","sudo service httpd start  ","sudo echo '<h1>Welcome to StackSimplify - APP-1</h1>' | sudo tee /var/www/html/index.html","sudo mkdir /var/www/html/app1","sudo echo '<!DOCTYPE html> <html> <body style=\"background-color:rgb(250, 210, 210);\"> <h1>Welcome to Stack Simplify - APP-1</h1> <p>Terraform Demo</p> <p>Application Version: V1</p> </body></html>' | sudo tee /var/www/html/app1/index.html","sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html","",""],"id":1}],[{"start":{"row":6,"column":46},"end":{"row":6,"column":47},"action":"remove","lines":["1"],"id":2},{"start":{"row":6,"column":46},"end":{"row":6,"column":47},"action":"insert","lines":["2"]}],[{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"remove","lines":["1"],"id":3},{"start":{"row":7,"column":28},"end":{"row":7,"column":29},"action":"insert","lines":["2"]}],[{"start":{"row":8,"column":122},"end":{"row":8,"column":123},"action":"remove","lines":["1"],"id":4},{"start":{"row":8,"column":122},"end":{"row":8,"column":123},"action":"insert","lines":["2"]}],[{"start":{"row":9,"column":95},"end":{"row":9,"column":96},"action":"remove","lines":["1"],"id":5},{"start":{"row":9,"column":95},"end":{"row":9,"column":96},"action":"insert","lines":["2"]}],[{"start":{"row":8,"column":226},"end":{"row":8,"column":227},"action":"remove","lines":["1"],"id":6},{"start":{"row":8,"column":226},"end":{"row":8,"column":227},"action":"insert","lines":["2"]}],[{"start":{"row":8,"column":68},"end":{"row":8,"column":71},"action":"remove","lines":["250"],"id":7},{"start":{"row":8,"column":68},"end":{"row":8,"column":69},"action":"insert","lines":["1"]},{"start":{"row":8,"column":69},"end":{"row":8,"column":70},"action":"insert","lines":["5"]}],[{"start":{"row":8,"column":72},"end":{"row":8,"column":75},"action":"remove","lines":["210"],"id":8},{"start":{"row":8,"column":72},"end":{"row":8,"column":73},"action":"insert","lines":["2"]},{"start":{"row":8,"column":73},"end":{"row":8,"column":74},"action":"insert","lines":["3"]},{"start":{"row":8,"column":74},"end":{"row":8,"column":75},"action":"insert","lines":["2"]}],[{"start":{"row":8,"column":77},"end":{"row":8,"column":80},"action":"remove","lines":["210"],"id":9},{"start":{"row":8,"column":77},"end":{"row":8,"column":78},"action":"insert","lines":["1"]},{"start":{"row":8,"column":78},"end":{"row":8,"column":79},"action":"insert","lines":["9"]},{"start":{"row":8,"column":79},"end":{"row":8,"column":80},"action":"insert","lines":["2"]}]]},"timestamp":1665392260551}