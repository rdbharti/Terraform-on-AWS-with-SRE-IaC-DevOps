{"filter":false,"title":"c13-05-autoscaling-notifications.tf","tooltip":"/14-Autoscaling-with-Launch-Configuration/terraform-manifests/c13-05-autoscaling-notifications.tf","undoManager":{"mark":51,"position":51,"stack":[[{"start":{"row":27,"column":0},"end":{"row":28,"column":0},"action":"insert","lines":["",""],"id":2}],[{"start":{"row":0,"column":0},"end":{"row":0,"column":2},"action":"insert","lines":["# "],"id":3},{"start":{"row":1,"column":0},"end":{"row":1,"column":2},"action":"insert","lines":["# "]},{"start":{"row":2,"column":0},"end":{"row":2,"column":2},"action":"insert","lines":["# "]},{"start":{"row":4,"column":0},"end":{"row":4,"column":2},"action":"insert","lines":["# "]},{"start":{"row":5,"column":0},"end":{"row":5,"column":2},"action":"insert","lines":["# "]},{"start":{"row":6,"column":0},"end":{"row":6,"column":2},"action":"insert","lines":["# "]},{"start":{"row":7,"column":0},"end":{"row":7,"column":2},"action":"insert","lines":["# "]},{"start":{"row":9,"column":0},"end":{"row":9,"column":2},"action":"insert","lines":["# "]},{"start":{"row":10,"column":0},"end":{"row":10,"column":2},"action":"insert","lines":["# "]},{"start":{"row":11,"column":0},"end":{"row":11,"column":2},"action":"insert","lines":["# "]},{"start":{"row":12,"column":0},"end":{"row":12,"column":2},"action":"insert","lines":["# "]},{"start":{"row":13,"column":0},"end":{"row":13,"column":2},"action":"insert","lines":["# "]},{"start":{"row":14,"column":0},"end":{"row":14,"column":2},"action":"insert","lines":["# "]},{"start":{"row":16,"column":0},"end":{"row":16,"column":2},"action":"insert","lines":["# "]},{"start":{"row":17,"column":0},"end":{"row":17,"column":2},"action":"insert","lines":["# "]},{"start":{"row":18,"column":0},"end":{"row":18,"column":2},"action":"insert","lines":["# "]},{"start":{"row":19,"column":0},"end":{"row":19,"column":2},"action":"insert","lines":["# "]},{"start":{"row":20,"column":0},"end":{"row":20,"column":2},"action":"insert","lines":["# "]},{"start":{"row":21,"column":0},"end":{"row":21,"column":2},"action":"insert","lines":["# "]},{"start":{"row":22,"column":0},"end":{"row":22,"column":2},"action":"insert","lines":["# "]},{"start":{"row":23,"column":0},"end":{"row":23,"column":2},"action":"insert","lines":["# "]},{"start":{"row":24,"column":0},"end":{"row":24,"column":2},"action":"insert","lines":["# "]},{"start":{"row":25,"column":0},"end":{"row":25,"column":2},"action":"insert","lines":["# "]},{"start":{"row":26,"column":0},"end":{"row":26,"column":2},"action":"insert","lines":["# "]}],[{"start":{"row":28,"column":0},"end":{"row":30,"column":1},"action":"insert","lines":["resource \"aws_sns_topic\" \"user_updates\" {","  name = \"user-updates-topic\"","}"],"id":4}],[{"start":{"row":29,"column":28},"end":{"row":29,"column":29},"action":"insert","lines":["{"],"id":5},{"start":{"row":29,"column":29},"end":{"row":29,"column":30},"action":"insert","lines":["}"]}],[{"start":{"row":29,"column":28},"end":{"row":29,"column":29},"action":"insert","lines":["-"],"id":6}],[{"start":{"row":29,"column":29},"end":{"row":29,"column":30},"action":"insert","lines":["$"],"id":7}],[{"start":{"row":29,"column":31},"end":{"row":29,"column":32},"action":"insert","lines":["r"],"id":8},{"start":{"row":29,"column":32},"end":{"row":29,"column":33},"action":"insert","lines":["a"]},{"start":{"row":29,"column":33},"end":{"row":29,"column":34},"action":"insert","lines":["n"]}],[{"start":{"row":29,"column":31},"end":{"row":29,"column":34},"action":"remove","lines":["ran"],"id":9},{"start":{"row":29,"column":31},"end":{"row":29,"column":41},"action":"insert","lines":["random_pet"]}],[{"start":{"row":29,"column":41},"end":{"row":29,"column":42},"action":"insert","lines":["."],"id":10},{"start":{"row":29,"column":42},"end":{"row":29,"column":43},"action":"insert","lines":["t"]}],[{"start":{"row":29,"column":42},"end":{"row":29,"column":43},"action":"remove","lines":["t"],"id":11},{"start":{"row":29,"column":42},"end":{"row":29,"column":46},"action":"insert","lines":["this"]}],[{"start":{"row":29,"column":46},"end":{"row":29,"column":47},"action":"insert","lines":[","],"id":12}],[{"start":{"row":29,"column":46},"end":{"row":29,"column":47},"action":"remove","lines":[","],"id":13}],[{"start":{"row":29,"column":46},"end":{"row":29,"column":47},"action":"insert","lines":["."],"id":14},{"start":{"row":29,"column":47},"end":{"row":29,"column":48},"action":"insert","lines":["i"]},{"start":{"row":29,"column":48},"end":{"row":29,"column":49},"action":"insert","lines":["d"]}],[{"start":{"row":30,"column":1},"end":{"row":31,"column":0},"action":"insert","lines":["",""],"id":15},{"start":{"row":31,"column":0},"end":{"row":32,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":32,"column":0},"end":{"row":36,"column":1},"action":"insert","lines":["resource \"aws_sns_topic_subscription\" \"user_updates_sqs_target\" {","  topic_arn = \"arn:aws:sns:us-west-2:432981146916:user-updates-topic\"","  protocol  = \"sqs\"","  endpoint  = \"arn:aws:sqs:us-west-2:432981146916:terraform-queue-too\"","}"],"id":16}],[{"start":{"row":28,"column":26},"end":{"row":28,"column":38},"action":"remove","lines":["user_updates"],"id":17},{"start":{"row":28,"column":26},"end":{"row":28,"column":41},"action":"insert","lines":["myasg_sns_topic"]}],[{"start":{"row":32,"column":39},"end":{"row":32,"column":62},"action":"remove","lines":["user_updates_sqs_target"],"id":18},{"start":{"row":32,"column":39},"end":{"row":32,"column":67},"action":"insert","lines":["myasg_sns_topic_subscription"]}],[{"start":{"row":33,"column":14},"end":{"row":33,"column":69},"action":"remove","lines":["\"arn:aws:sns:us-west-2:432981146916:user-updates-topic\""],"id":19},{"start":{"row":33,"column":14},"end":{"row":33,"column":15},"action":"insert","lines":["a"]},{"start":{"row":33,"column":15},"end":{"row":33,"column":16},"action":"insert","lines":["w"]},{"start":{"row":33,"column":16},"end":{"row":33,"column":17},"action":"insert","lines":["s"]}],[{"start":{"row":33,"column":14},"end":{"row":33,"column":17},"action":"remove","lines":["aws"],"id":20},{"start":{"row":33,"column":14},"end":{"row":33,"column":27},"action":"insert","lines":["aws_sns_topic"]}],[{"start":{"row":33,"column":27},"end":{"row":33,"column":28},"action":"insert","lines":["."],"id":21},{"start":{"row":33,"column":28},"end":{"row":33,"column":29},"action":"insert","lines":["m"]},{"start":{"row":33,"column":29},"end":{"row":33,"column":30},"action":"insert","lines":["y"]}],[{"start":{"row":33,"column":28},"end":{"row":33,"column":30},"action":"remove","lines":["my"],"id":22},{"start":{"row":33,"column":28},"end":{"row":33,"column":43},"action":"insert","lines":["myasg_sns_topic"]}],[{"start":{"row":33,"column":43},"end":{"row":33,"column":44},"action":"insert","lines":["."],"id":23},{"start":{"row":33,"column":44},"end":{"row":33,"column":45},"action":"insert","lines":["a"]},{"start":{"row":33,"column":45},"end":{"row":33,"column":46},"action":"insert","lines":["r"]},{"start":{"row":33,"column":46},"end":{"row":33,"column":47},"action":"insert","lines":["n"]}],[{"start":{"row":34,"column":15},"end":{"row":34,"column":18},"action":"remove","lines":["sqs"],"id":24},{"start":{"row":34,"column":15},"end":{"row":34,"column":16},"action":"insert","lines":["e"]},{"start":{"row":34,"column":16},"end":{"row":34,"column":17},"action":"insert","lines":["m"]},{"start":{"row":34,"column":17},"end":{"row":34,"column":18},"action":"insert","lines":["a"]},{"start":{"row":34,"column":18},"end":{"row":34,"column":19},"action":"insert","lines":["i"]},{"start":{"row":34,"column":19},"end":{"row":34,"column":20},"action":"insert","lines":["l"]}],[{"start":{"row":35,"column":15},"end":{"row":35,"column":69},"action":"remove","lines":["arn:aws:sqs:us-west-2:432981146916:terraform-queue-too"],"id":25},{"start":{"row":35,"column":15},"end":{"row":35,"column":16},"action":"insert","lines":["r"]},{"start":{"row":35,"column":16},"end":{"row":35,"column":17},"action":"insert","lines":["a"]}],[{"start":{"row":35,"column":16},"end":{"row":35,"column":17},"action":"remove","lines":["a"],"id":26},{"start":{"row":35,"column":15},"end":{"row":35,"column":16},"action":"remove","lines":["r"]}],[{"start":{"row":35,"column":15},"end":{"row":35,"column":16},"action":"insert","lines":["a"],"id":27},{"start":{"row":35,"column":16},"end":{"row":35,"column":17},"action":"insert","lines":["w"]},{"start":{"row":35,"column":17},"end":{"row":35,"column":18},"action":"insert","lines":["s"]},{"start":{"row":35,"column":18},"end":{"row":35,"column":19},"action":"insert","lines":["r"]},{"start":{"row":35,"column":19},"end":{"row":35,"column":20},"action":"insert","lines":["d"]},{"start":{"row":35,"column":20},"end":{"row":35,"column":21},"action":"insert","lines":["b"]},{"start":{"row":35,"column":21},"end":{"row":35,"column":22},"action":"insert","lines":["h"]},{"start":{"row":35,"column":22},"end":{"row":35,"column":23},"action":"insert","lines":["a"]},{"start":{"row":35,"column":23},"end":{"row":35,"column":24},"action":"insert","lines":["r"]}],[{"start":{"row":35,"column":24},"end":{"row":35,"column":25},"action":"insert","lines":["t"],"id":28},{"start":{"row":35,"column":25},"end":{"row":35,"column":26},"action":"insert","lines":["i"]}],[{"start":{"row":35,"column":26},"end":{"row":35,"column":27},"action":"insert","lines":["+"],"id":29}],[{"start":{"row":35,"column":27},"end":{"row":35,"column":28},"action":"insert","lines":["t"],"id":30},{"start":{"row":35,"column":28},"end":{"row":35,"column":29},"action":"insert","lines":["e"]},{"start":{"row":35,"column":29},"end":{"row":35,"column":30},"action":"insert","lines":["r"]},{"start":{"row":35,"column":30},"end":{"row":35,"column":31},"action":"insert","lines":["r"]},{"start":{"row":35,"column":31},"end":{"row":35,"column":32},"action":"insert","lines":["a"]},{"start":{"row":35,"column":32},"end":{"row":35,"column":33},"action":"insert","lines":["f"]},{"start":{"row":35,"column":33},"end":{"row":35,"column":34},"action":"insert","lines":["o"]},{"start":{"row":35,"column":34},"end":{"row":35,"column":35},"action":"insert","lines":["r"]},{"start":{"row":35,"column":35},"end":{"row":35,"column":36},"action":"insert","lines":["m"]}],[{"start":{"row":35,"column":36},"end":{"row":35,"column":37},"action":"insert","lines":["@"],"id":31},{"start":{"row":35,"column":37},"end":{"row":35,"column":38},"action":"insert","lines":["g"]}],[{"start":{"row":35,"column":37},"end":{"row":35,"column":38},"action":"remove","lines":["g"],"id":32},{"start":{"row":35,"column":37},"end":{"row":35,"column":42},"action":"insert","lines":["gmail"]}],[{"start":{"row":35,"column":42},"end":{"row":35,"column":43},"action":"insert","lines":["."],"id":33},{"start":{"row":35,"column":43},"end":{"row":35,"column":44},"action":"insert","lines":["c"]},{"start":{"row":35,"column":44},"end":{"row":35,"column":45},"action":"insert","lines":["o"]},{"start":{"row":35,"column":45},"end":{"row":35,"column":46},"action":"insert","lines":["m"]}],[{"start":{"row":29,"column":10},"end":{"row":29,"column":28},"action":"remove","lines":["user-updates-topic"],"id":34},{"start":{"row":29,"column":10},"end":{"row":29,"column":11},"action":"insert","lines":["m"]},{"start":{"row":29,"column":11},"end":{"row":29,"column":12},"action":"insert","lines":["y"]},{"start":{"row":29,"column":12},"end":{"row":29,"column":13},"action":"insert","lines":["a"]},{"start":{"row":29,"column":13},"end":{"row":29,"column":14},"action":"insert","lines":["s"]},{"start":{"row":29,"column":14},"end":{"row":29,"column":15},"action":"insert","lines":["g"]}],[{"start":{"row":29,"column":15},"end":{"row":29,"column":16},"action":"insert","lines":["-"],"id":35},{"start":{"row":29,"column":16},"end":{"row":29,"column":17},"action":"insert","lines":["s"]},{"start":{"row":29,"column":17},"end":{"row":29,"column":18},"action":"insert","lines":["n"]}],[{"start":{"row":29,"column":16},"end":{"row":29,"column":18},"action":"remove","lines":["sn"],"id":36},{"start":{"row":29,"column":16},"end":{"row":29,"column":19},"action":"insert","lines":["sns"]}],[{"start":{"row":29,"column":19},"end":{"row":30,"column":0},"action":"insert","lines":["",""],"id":37},{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":30,"column":0},"end":{"row":30,"column":2},"action":"remove","lines":["  "],"id":38},{"start":{"row":29,"column":19},"end":{"row":30,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":29,"column":19},"end":{"row":29,"column":20},"action":"insert","lines":["-"],"id":39},{"start":{"row":29,"column":20},"end":{"row":29,"column":21},"action":"insert","lines":["t"]},{"start":{"row":29,"column":21},"end":{"row":29,"column":22},"action":"insert","lines":["o"]},{"start":{"row":29,"column":22},"end":{"row":29,"column":23},"action":"insert","lines":["p"]},{"start":{"row":29,"column":23},"end":{"row":29,"column":24},"action":"insert","lines":["i"]},{"start":{"row":29,"column":24},"end":{"row":29,"column":25},"action":"insert","lines":["c"]}],[{"start":{"row":36,"column":1},"end":{"row":37,"column":0},"action":"insert","lines":["",""],"id":40},{"start":{"row":37,"column":0},"end":{"row":38,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":38,"column":0},"end":{"row":52,"column":1},"action":"insert","lines":["","  group_names = [","    aws_autoscaling_group.bar.name,","    aws_autoscaling_group.foo.name,","  ]","","  notifications = [","    \"autoscaling:EC2_INSTANCE_LAUNCH\",","    \"autoscaling:EC2_INSTANCE_TERMINATE\",","    \"autoscaling:EC2_INSTANCE_LAUNCH_ERROR\",","    \"autoscaling:EC2_INSTANCE_TERMINATE_ERROR\",","  ]","","  topic_arn = aws_sns_topic.example.arn","}"],"id":41}],[{"start":{"row":30,"column":1},"end":{"row":31,"column":0},"action":"insert","lines":["",""],"id":42},{"start":{"row":31,"column":0},"end":{"row":32,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":40,"column":0},"end":{"row":54,"column":1},"action":"remove","lines":["","  group_names = [","    aws_autoscaling_group.bar.name,","    aws_autoscaling_group.foo.name,","  ]","","  notifications = [","    \"autoscaling:EC2_INSTANCE_LAUNCH\",","    \"autoscaling:EC2_INSTANCE_TERMINATE\",","    \"autoscaling:EC2_INSTANCE_LAUNCH_ERROR\",","    \"autoscaling:EC2_INSTANCE_TERMINATE_ERROR\",","  ]","","  topic_arn = aws_sns_topic.example.arn","}"],"id":43},{"start":{"row":40,"column":0},"end":{"row":54,"column":1},"action":"insert","lines":["resource \"aws_autoscaling_notification\" \"example_notifications\" {","  group_names = [","    aws_autoscaling_group.bar.name,","    aws_autoscaling_group.foo.name,","  ]","","  notifications = [","    \"autoscaling:EC2_INSTANCE_LAUNCH\",","    \"autoscaling:EC2_INSTANCE_TERMINATE\",","    \"autoscaling:EC2_INSTANCE_LAUNCH_ERROR\",","    \"autoscaling:EC2_INSTANCE_TERMINATE_ERROR\",","  ]","","  topic_arn = aws_sns_topic.example.arn","}"]}],[{"start":{"row":41,"column":16},"end":{"row":44,"column":3},"action":"remove","lines":["[","    aws_autoscaling_group.bar.name,","    aws_autoscaling_group.foo.name,","  ]"],"id":44},{"start":{"row":41,"column":16},"end":{"row":41,"column":55},"action":"insert","lines":["module.autoscaling.autoscaling_group_id"]}],[{"start":{"row":41,"column":16},"end":{"row":41,"column":17},"action":"insert","lines":["["],"id":45}],[{"start":{"row":41,"column":56},"end":{"row":41,"column":58},"action":"insert","lines":["[]"],"id":46}],[{"start":{"row":41,"column":57},"end":{"row":41,"column":58},"action":"insert","lines":["0"],"id":47}],[{"start":{"row":41,"column":59},"end":{"row":41,"column":60},"action":"insert","lines":["]"],"id":48}],[{"start":{"row":40,"column":41},"end":{"row":40,"column":62},"action":"remove","lines":["example_notifications"],"id":49},{"start":{"row":40,"column":41},"end":{"row":40,"column":42},"action":"insert","lines":["m"]},{"start":{"row":40,"column":42},"end":{"row":40,"column":43},"action":"insert","lines":["y"]},{"start":{"row":40,"column":43},"end":{"row":40,"column":44},"action":"insert","lines":["a"]},{"start":{"row":40,"column":44},"end":{"row":40,"column":45},"action":"insert","lines":["s"]}],[{"start":{"row":40,"column":41},"end":{"row":40,"column":45},"action":"remove","lines":["myas"],"id":50},{"start":{"row":40,"column":41},"end":{"row":40,"column":60},"action":"insert","lines":["myasg_notifications"]}],[{"start":{"row":50,"column":28},"end":{"row":50,"column":35},"action":"remove","lines":["example"],"id":51},{"start":{"row":50,"column":28},"end":{"row":50,"column":43},"action":"insert","lines":["myasg_sns_topic"]}],[{"start":{"row":41,"column":58},"end":{"row":41,"column":59},"action":"remove","lines":["]"],"id":52},{"start":{"row":41,"column":57},"end":{"row":41,"column":58},"action":"remove","lines":["0"]},{"start":{"row":41,"column":56},"end":{"row":41,"column":58},"action":"remove","lines":["[]"]}],[{"start":{"row":41,"column":56},"end":{"row":41,"column":57},"action":"insert","lines":["]"],"id":53}]]},"ace":{"folds":[],"scrolltop":734.4000000000001,"scrollleft":0,"selection":{"start":{"row":41,"column":57},"end":{"row":41,"column":57},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":30,"state":"start","mode":"ace/mode/terraform"}},"timestamp":1665592208535,"hash":"2f50bff85e375e1cd4d1e205c722f30c1f055906"}