{"filter":false,"title":"c5-ec2instance.tf","tooltip":"/04-Terraform-Variables-and-Datasources/terraform-manifests/c5-ec2instance.tf","undoManager":{"mark":52,"position":52,"stack":[[{"start":{"row":0,"column":0},"end":{"row":9,"column":1},"action":"insert","lines":["resource \"aws_instance\" \"myec2vm\" {","  ami           = \"ami-026b57f3c383c2eec\"","  instance_type = \"t2.micro\"","  user_data     = file(\"${path.cwd}/app1-install.sh\")","","","  tags = {","    Name = \"terraform-VM-EC2\"","  }","}"],"id":1}],[{"start":{"row":1,"column":18},"end":{"row":1,"column":41},"action":"remove","lines":["\"ami-026b57f3c383c2eec\""],"id":2},{"start":{"row":1,"column":18},"end":{"row":1,"column":50},"action":"insert","lines":["data.aws_ami.amz_linux2.image_id"]}],[{"start":{"row":2,"column":18},"end":{"row":2,"column":28},"action":"remove","lines":["\"t2.micro\""],"id":3},{"start":{"row":2,"column":18},"end":{"row":2,"column":19},"action":"insert","lines":["v"]},{"start":{"row":2,"column":19},"end":{"row":2,"column":20},"action":"insert","lines":["a"]},{"start":{"row":2,"column":20},"end":{"row":2,"column":21},"action":"insert","lines":["r"]},{"start":{"row":2,"column":21},"end":{"row":2,"column":22},"action":"insert","lines":["."]},{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":["i"]},{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"insert","lines":["n"]}],[{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"remove","lines":["n"],"id":4}],[{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"remove","lines":["i"],"id":5},{"start":{"row":2,"column":22},"end":{"row":2,"column":35},"action":"insert","lines":["instance_type"]}],[{"start":{"row":3,"column":53},"end":{"row":4,"column":0},"action":"insert","lines":["",""],"id":6},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":4,"column":2},"end":{"row":5,"column":0},"action":"remove","lines":["",""],"id":7}],[{"start":{"row":4,"column":2},"end":{"row":4,"column":3},"action":"insert","lines":["k"],"id":8},{"start":{"row":4,"column":3},"end":{"row":4,"column":4},"action":"insert","lines":["e"]},{"start":{"row":4,"column":4},"end":{"row":4,"column":5},"action":"insert","lines":["y"]},{"start":{"row":4,"column":5},"end":{"row":4,"column":6},"action":"insert","lines":["_"]},{"start":{"row":4,"column":6},"end":{"row":4,"column":7},"action":"insert","lines":["n"]},{"start":{"row":4,"column":7},"end":{"row":4,"column":8},"action":"insert","lines":["a"]}],[{"start":{"row":4,"column":8},"end":{"row":4,"column":9},"action":"insert","lines":["m"],"id":9},{"start":{"row":4,"column":9},"end":{"row":4,"column":10},"action":"insert","lines":["e"]}],[{"start":{"row":4,"column":10},"end":{"row":4,"column":11},"action":"insert","lines":[" "],"id":10},{"start":{"row":4,"column":11},"end":{"row":4,"column":12},"action":"insert","lines":["="]}],[{"start":{"row":4,"column":12},"end":{"row":4,"column":13},"action":"insert","lines":[" "],"id":11}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":15},"action":"insert","lines":["\"\""],"id":12}],[{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["t"],"id":13},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["e"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["r"]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["r"]},{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"insert","lines":["a"]},{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"insert","lines":["o"]},{"start":{"row":4,"column":20},"end":{"row":4,"column":21},"action":"insert","lines":["f"]}],[{"start":{"row":4,"column":20},"end":{"row":4,"column":21},"action":"remove","lines":["f"],"id":14},{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"remove","lines":["o"]}],[{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"insert","lines":["f"],"id":15},{"start":{"row":4,"column":20},"end":{"row":4,"column":21},"action":"insert","lines":["o"]},{"start":{"row":4,"column":21},"end":{"row":4,"column":22},"action":"insert","lines":["r"]},{"start":{"row":4,"column":22},"end":{"row":4,"column":23},"action":"insert","lines":["m"]},{"start":{"row":4,"column":23},"end":{"row":4,"column":24},"action":"insert","lines":["-"]},{"start":{"row":4,"column":24},"end":{"row":4,"column":25},"action":"insert","lines":["k"]}],[{"start":{"row":4,"column":25},"end":{"row":4,"column":26},"action":"insert","lines":["e"],"id":16},{"start":{"row":4,"column":26},"end":{"row":4,"column":27},"action":"insert","lines":["y"]}],[{"start":{"row":4,"column":13},"end":{"row":4,"column":28},"action":"remove","lines":["\"terraform-key\""],"id":17},{"start":{"row":4,"column":13},"end":{"row":4,"column":14},"action":"insert","lines":["v"]},{"start":{"row":4,"column":14},"end":{"row":4,"column":15},"action":"insert","lines":["a"]},{"start":{"row":4,"column":15},"end":{"row":4,"column":16},"action":"insert","lines":["r"]},{"start":{"row":4,"column":16},"end":{"row":4,"column":17},"action":"insert","lines":["."]},{"start":{"row":4,"column":17},"end":{"row":4,"column":18},"action":"insert","lines":["i"]}],[{"start":{"row":4,"column":18},"end":{"row":4,"column":19},"action":"insert","lines":["n"],"id":18},{"start":{"row":4,"column":19},"end":{"row":4,"column":20},"action":"insert","lines":["s"]}],[{"start":{"row":4,"column":17},"end":{"row":4,"column":20},"action":"remove","lines":["ins"],"id":19},{"start":{"row":4,"column":17},"end":{"row":4,"column":33},"action":"insert","lines":["instance_keypair"]}],[{"start":{"row":4,"column":33},"end":{"row":5,"column":0},"action":"insert","lines":["",""],"id":20},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":5,"column":2},"end":{"row":6,"column":0},"action":"remove","lines":["",""],"id":21}],[{"start":{"row":5,"column":2},"end":{"row":5,"column":3},"action":"insert","lines":["v"],"id":22},{"start":{"row":5,"column":3},"end":{"row":5,"column":4},"action":"insert","lines":["p"]},{"start":{"row":5,"column":4},"end":{"row":5,"column":5},"action":"insert","lines":["c"]},{"start":{"row":5,"column":5},"end":{"row":5,"column":6},"action":"insert","lines":["_"]},{"start":{"row":5,"column":6},"end":{"row":5,"column":7},"action":"insert","lines":["s"]},{"start":{"row":5,"column":7},"end":{"row":5,"column":8},"action":"insert","lines":["e"]}],[{"start":{"row":5,"column":8},"end":{"row":5,"column":9},"action":"insert","lines":["c"],"id":23},{"start":{"row":5,"column":9},"end":{"row":5,"column":10},"action":"insert","lines":["u"]},{"start":{"row":5,"column":10},"end":{"row":5,"column":11},"action":"insert","lines":["r"]},{"start":{"row":5,"column":11},"end":{"row":5,"column":12},"action":"insert","lines":["i"]},{"start":{"row":5,"column":12},"end":{"row":5,"column":13},"action":"insert","lines":["t"]},{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"insert","lines":["y"]},{"start":{"row":5,"column":14},"end":{"row":5,"column":15},"action":"insert","lines":["_"]}],[{"start":{"row":5,"column":15},"end":{"row":5,"column":16},"action":"insert","lines":["g"],"id":24},{"start":{"row":5,"column":16},"end":{"row":5,"column":17},"action":"insert","lines":["r"]},{"start":{"row":5,"column":17},"end":{"row":5,"column":18},"action":"insert","lines":["o"]},{"start":{"row":5,"column":18},"end":{"row":5,"column":19},"action":"insert","lines":["u"]}],[{"start":{"row":5,"column":19},"end":{"row":5,"column":20},"action":"insert","lines":["p"],"id":25},{"start":{"row":5,"column":20},"end":{"row":5,"column":21},"action":"insert","lines":["_"]},{"start":{"row":5,"column":21},"end":{"row":5,"column":22},"action":"insert","lines":["i"]},{"start":{"row":5,"column":22},"end":{"row":5,"column":23},"action":"insert","lines":["d"]},{"start":{"row":5,"column":23},"end":{"row":5,"column":24},"action":"insert","lines":["s"]}],[{"start":{"row":5,"column":24},"end":{"row":5,"column":25},"action":"insert","lines":[" "],"id":26},{"start":{"row":5,"column":25},"end":{"row":5,"column":26},"action":"insert","lines":["="]}],[{"start":{"row":5,"column":26},"end":{"row":5,"column":27},"action":"insert","lines":[" "],"id":27}],[{"start":{"row":5,"column":27},"end":{"row":5,"column":29},"action":"insert","lines":["[]"],"id":28}],[{"start":{"row":5,"column":28},"end":{"row":5,"column":29},"action":"insert","lines":["a"],"id":29},{"start":{"row":5,"column":29},"end":{"row":5,"column":30},"action":"insert","lines":["w"]},{"start":{"row":5,"column":30},"end":{"row":5,"column":31},"action":"insert","lines":["s"]},{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"insert","lines":["."]}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"remove","lines":["."],"id":30}],[{"start":{"row":5,"column":31},"end":{"row":5,"column":32},"action":"insert","lines":["_"],"id":31},{"start":{"row":5,"column":32},"end":{"row":5,"column":33},"action":"insert","lines":["s"]},{"start":{"row":5,"column":33},"end":{"row":5,"column":34},"action":"insert","lines":["e"]}],[{"start":{"row":5,"column":28},"end":{"row":5,"column":34},"action":"remove","lines":["aws_se"],"id":32},{"start":{"row":5,"column":28},"end":{"row":5,"column":46},"action":"insert","lines":["aws_security_group"]}],[{"start":{"row":5,"column":46},"end":{"row":5,"column":47},"action":"insert","lines":["."],"id":33},{"start":{"row":5,"column":47},"end":{"row":5,"column":48},"action":"insert","lines":["v"]},{"start":{"row":5,"column":48},"end":{"row":5,"column":49},"action":"insert","lines":["p"]}],[{"start":{"row":5,"column":49},"end":{"row":5,"column":50},"action":"insert","lines":["c"],"id":34},{"start":{"row":5,"column":50},"end":{"row":5,"column":51},"action":"insert","lines":["-"]},{"start":{"row":5,"column":51},"end":{"row":5,"column":52},"action":"insert","lines":["s"]},{"start":{"row":5,"column":52},"end":{"row":5,"column":53},"action":"insert","lines":["s"]},{"start":{"row":5,"column":53},"end":{"row":5,"column":54},"action":"insert","lines":["j"]}],[{"start":{"row":5,"column":53},"end":{"row":5,"column":54},"action":"remove","lines":["j"],"id":35}],[{"start":{"row":5,"column":53},"end":{"row":5,"column":54},"action":"insert","lines":["h"],"id":36}],[{"start":{"row":5,"column":50},"end":{"row":5,"column":51},"action":"remove","lines":["-"],"id":37}],[{"start":{"row":5,"column":50},"end":{"row":5,"column":51},"action":"insert","lines":["_"],"id":38}],[{"start":{"row":5,"column":28},"end":{"row":5,"column":54},"action":"remove","lines":["aws_security_group.vpc_ssh"],"id":39},{"start":{"row":5,"column":28},"end":{"row":5,"column":57},"action":"insert","lines":["aws_security_group.vpc_ssh.id"]}],[{"start":{"row":5,"column":57},"end":{"row":5,"column":58},"action":"insert","lines":[","],"id":40}],[{"start":{"row":5,"column":58},"end":{"row":5,"column":59},"action":"insert","lines":[" "],"id":41}],[{"start":{"row":5,"column":59},"end":{"row":5,"column":88},"action":"insert","lines":["aws_security_group.vpc_ssh.id"],"id":42}],[{"start":{"row":5,"column":84},"end":{"row":5,"column":85},"action":"remove","lines":["h"],"id":43},{"start":{"row":5,"column":83},"end":{"row":5,"column":84},"action":"remove","lines":["s"]},{"start":{"row":5,"column":82},"end":{"row":5,"column":83},"action":"remove","lines":["s"]}],[{"start":{"row":5,"column":82},"end":{"row":5,"column":83},"action":"insert","lines":["w"],"id":44},{"start":{"row":5,"column":83},"end":{"row":5,"column":84},"action":"insert","lines":["e"]},{"start":{"row":5,"column":84},"end":{"row":5,"column":85},"action":"insert","lines":["b"]}],[{"start":{"row":5,"column":28},"end":{"row":6,"column":0},"action":"insert","lines":["",""],"id":45},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":6,"column":33},"end":{"row":7,"column":0},"action":"insert","lines":["",""],"id":46},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":7,"column":31},"end":{"row":8,"column":0},"action":"insert","lines":["",""],"id":47},{"start":{"row":8,"column":0},"end":{"row":8,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":4,"column":11},"end":{"row":4,"column":16},"action":"insert","lines":["     "],"id":48,"ignore":true},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["  "]},{"start":{"row":6,"column":34},"end":{"row":6,"column":35},"action":"remove","lines":[" "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"remove","lines":["_"],"id":49}],[{"start":{"row":7,"column":26},"end":{"row":7,"column":27},"action":"insert","lines":["-"],"id":50}],[{"start":{"row":6,"column":26},"end":{"row":6,"column":27},"action":"remove","lines":["_"],"id":51}],[{"start":{"row":6,"column":26},"end":{"row":6,"column":27},"action":"insert","lines":["-"],"id":52}],[{"start":{"row":2,"column":22},"end":{"row":2,"column":35},"action":"remove","lines":["instance_type"],"id":53},{"start":{"row":2,"column":22},"end":{"row":2,"column":39},"action":"insert","lines":["aws_instance_type"]}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":2,"column":39},"end":{"row":2,"column":39},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1665037238413,"hash":"275b50b7ff53ac8d893f64858cf071f93d1da72f"}