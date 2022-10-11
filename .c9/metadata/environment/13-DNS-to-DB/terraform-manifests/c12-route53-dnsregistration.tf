{"filter":false,"title":"c12-route53-dnsregistration.tf","tooltip":"/13-DNS-to-DB/terraform-manifests/c12-route53-dnsregistration.tf","undoManager":{"mark":6,"position":6,"stack":[[{"start":{"row":15,"column":0},"end":{"row":39,"column":3},"action":"remove","lines":["## App1 DNS","resource \"aws_route53_record\" \"app1_dns\" {","  zone_id = data.aws_route53_zone.mydomain.zone_id","  name    = \"azure-aks101.ranadurlabh.in\"","  type    = \"A\"","","  alias {","    name                   = module.alb.lb_dns_name","    zone_id                = module.alb.lb_zone_id","    evaluate_target_health = true","  }","}","","# ## App2 DNS","# resource \"aws_route53_record\" \"app2_dns\" {","#   zone_id = data.aws_route53_zone.mydomain.zone_id","#   name    = var.app2_dns_name","#   type    = \"A\"","","#   alias {","#     name                   = module.alb.lb_dns_name","#     zone_id                = module.alb.lb_zone_id","#     evaluate_target_health = true","#   }","# }"],"id":2},{"start":{"row":14,"column":0},"end":{"row":15,"column":0},"action":"remove","lines":["",""]},{"start":{"row":13,"column":1},"end":{"row":14,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":3,"column":31},"end":{"row":3,"column":42},"action":"remove","lines":["default_dns"],"id":3},{"start":{"row":3,"column":31},"end":{"row":3,"column":32},"action":"insert","lines":["a"]},{"start":{"row":3,"column":32},"end":{"row":3,"column":33},"action":"insert","lines":["p"]},{"start":{"row":3,"column":33},"end":{"row":3,"column":34},"action":"insert","lines":["p"]},{"start":{"row":3,"column":34},"end":{"row":3,"column":35},"action":"insert","lines":["d"]},{"start":{"row":3,"column":35},"end":{"row":3,"column":36},"action":"insert","lines":["_"]}],[{"start":{"row":3,"column":35},"end":{"row":3,"column":36},"action":"remove","lines":["_"],"id":4},{"start":{"row":3,"column":34},"end":{"row":3,"column":35},"action":"remove","lines":["d"]}],[{"start":{"row":3,"column":34},"end":{"row":3,"column":35},"action":"insert","lines":["_"],"id":5},{"start":{"row":3,"column":35},"end":{"row":3,"column":36},"action":"insert","lines":["d"]},{"start":{"row":3,"column":36},"end":{"row":3,"column":37},"action":"insert","lines":["n"]},{"start":{"row":3,"column":37},"end":{"row":3,"column":38},"action":"insert","lines":["s"]}],[{"start":{"row":5,"column":13},"end":{"row":5,"column":22},"action":"remove","lines":["myapps101"],"id":6},{"start":{"row":5,"column":13},"end":{"row":5,"column":14},"action":"insert","lines":["d"]},{"start":{"row":5,"column":14},"end":{"row":5,"column":15},"action":"insert","lines":["n"]},{"start":{"row":5,"column":15},"end":{"row":5,"column":16},"action":"insert","lines":["s"]},{"start":{"row":5,"column":16},"end":{"row":5,"column":17},"action":"insert","lines":["-"]}],[{"start":{"row":5,"column":17},"end":{"row":5,"column":18},"action":"insert","lines":["t"],"id":7},{"start":{"row":5,"column":18},"end":{"row":5,"column":19},"action":"insert","lines":["o"]},{"start":{"row":5,"column":19},"end":{"row":5,"column":20},"action":"insert","lines":["-"]},{"start":{"row":5,"column":20},"end":{"row":5,"column":21},"action":"insert","lines":["d"]},{"start":{"row":5,"column":21},"end":{"row":5,"column":22},"action":"insert","lines":["b"]},{"start":{"row":5,"column":22},"end":{"row":5,"column":23},"action":"insert","lines":["3"]}],[{"start":{"row":5,"column":22},"end":{"row":5,"column":23},"action":"remove","lines":["3"],"id":8}]]},"ace":{"folds":[],"scrolltop":0,"scrollleft":0,"selection":{"start":{"row":5,"column":22},"end":{"row":5,"column":22},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1665510226341,"hash":"48257ee4abcc68cce90470f461b3df44cfad01b4"}