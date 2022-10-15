{"filter":false,"title":"c13-06-autoscaling-ttsp.tf","tooltip":"/14-Autoscaling-with-Launch-Configuration/terraform-manifests/c13-06-autoscaling-ttsp.tf","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":36,"column":42},"end":{"row":36,"column":43},"action":"remove","lines":["_"],"id":27}],[{"start":{"row":36,"column":42},"end":{"row":36,"column":43},"action":"insert","lines":[" "],"id":28}],[{"start":{"row":36,"column":50},"end":{"row":36,"column":51},"action":"remove","lines":["_"],"id":29}],[{"start":{"row":36,"column":50},"end":{"row":36,"column":51},"action":"insert","lines":[" "],"id":30}],[{"start":{"row":36,"column":55},"end":{"row":36,"column":56},"action":"remove","lines":["_"],"id":31}],[{"start":{"row":36,"column":55},"end":{"row":36,"column":56},"action":"insert","lines":[" "],"id":32}],[{"start":{"row":36,"column":31},"end":{"row":36,"column":32},"action":"remove","lines":[" "],"id":33}],[{"start":{"row":36,"column":31},"end":{"row":36,"column":32},"action":"insert","lines":["-"],"id":34}],[{"start":{"row":36,"column":35},"end":{"row":36,"column":36},"action":"remove","lines":[" "],"id":35}],[{"start":{"row":36,"column":35},"end":{"row":36,"column":36},"action":"insert","lines":["-"],"id":36}],[{"start":{"row":36,"column":42},"end":{"row":36,"column":43},"action":"remove","lines":[" "],"id":37}],[{"start":{"row":36,"column":42},"end":{"row":36,"column":43},"action":"insert","lines":["-"],"id":38}],[{"start":{"row":36,"column":50},"end":{"row":36,"column":51},"action":"remove","lines":[" "],"id":39}],[{"start":{"row":36,"column":50},"end":{"row":36,"column":51},"action":"insert","lines":["-"],"id":40}],[{"start":{"row":36,"column":55},"end":{"row":36,"column":56},"action":"remove","lines":[" "],"id":41}],[{"start":{"row":36,"column":55},"end":{"row":36,"column":56},"action":"insert","lines":["-"],"id":42}],[{"start":{"row":36,"column":59},"end":{"row":37,"column":0},"action":"insert","lines":["",""],"id":43},{"start":{"row":37,"column":0},"end":{"row":37,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":37,"column":2},"end":{"row":37,"column":13},"action":"insert","lines":["policy_type"],"id":44}],[{"start":{"row":37,"column":13},"end":{"row":37,"column":14},"action":"insert","lines":[" "],"id":45},{"start":{"row":37,"column":14},"end":{"row":37,"column":15},"action":"insert","lines":["="]}],[{"start":{"row":37,"column":15},"end":{"row":37,"column":16},"action":"insert","lines":[" "],"id":46}],[{"start":{"row":37,"column":16},"end":{"row":37,"column":18},"action":"insert","lines":["\"\""],"id":47}],[{"start":{"row":37,"column":16},"end":{"row":37,"column":18},"action":"remove","lines":["\"\""],"id":48},{"start":{"row":37,"column":16},"end":{"row":37,"column":39},"action":"insert","lines":["\"TargetTrackingScaling\""]}],[{"start":{"row":37,"column":39},"end":{"row":38,"column":0},"action":"insert","lines":["",""],"id":49},{"start":{"row":38,"column":0},"end":{"row":38,"column":2},"action":"insert","lines":["  "]},{"start":{"row":38,"column":2},"end":{"row":39,"column":0},"action":"insert","lines":["",""]},{"start":{"row":39,"column":0},"end":{"row":39,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":38,"column":2},"end":{"row":44,"column":3},"action":"insert","lines":[" target_tracking_configuration {","    predefined_metric_specification {","      predefined_metric_type = \"ASGAverageCPUUtilization\"","    }","","    target_value = 40.0","  }"],"id":50}],[{"start":{"row":43,"column":19},"end":{"row":43,"column":20},"action":"remove","lines":["4"],"id":51},{"start":{"row":43,"column":19},"end":{"row":43,"column":20},"action":"insert","lines":["5"]}],[{"start":{"row":49,"column":27},"end":{"row":49,"column":57},"action":"remove","lines":["aws_autoscaling_group.bar.name"],"id":52},{"start":{"row":49,"column":27},"end":{"row":49,"column":68},"action":"insert","lines":["module.autoscaling.autoscaling_group_name"]}],[{"start":{"row":45,"column":2},"end":{"row":46,"column":0},"action":"insert","lines":["",""],"id":53},{"start":{"row":46,"column":0},"end":{"row":46,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":46,"column":2},"end":{"row":46,"column":27},"action":"insert","lines":["estimated_instance_warmup"],"id":54}],[{"start":{"row":46,"column":27},"end":{"row":46,"column":28},"action":"insert","lines":[" "],"id":55},{"start":{"row":46,"column":28},"end":{"row":46,"column":29},"action":"insert","lines":["="]}],[{"start":{"row":46,"column":29},"end":{"row":46,"column":30},"action":"insert","lines":[" "],"id":56},{"start":{"row":46,"column":30},"end":{"row":46,"column":31},"action":"insert","lines":["3"]},{"start":{"row":46,"column":31},"end":{"row":46,"column":32},"action":"insert","lines":["6"]},{"start":{"row":46,"column":32},"end":{"row":46,"column":33},"action":"insert","lines":["0"]},{"start":{"row":46,"column":33},"end":{"row":46,"column":34},"action":"insert","lines":["0"]}],[{"start":{"row":46,"column":30},"end":{"row":46,"column":34},"action":"remove","lines":["3600"],"id":57},{"start":{"row":46,"column":30},"end":{"row":46,"column":31},"action":"insert","lines":["1"]},{"start":{"row":46,"column":31},"end":{"row":46,"column":32},"action":"insert","lines":["8"]},{"start":{"row":46,"column":32},"end":{"row":46,"column":33},"action":"insert","lines":["0"]}],[{"start":{"row":47,"column":2},"end":{"row":49,"column":30},"action":"remove","lines":["scaling_adjustment     = 4","  adjustment_type        = \"ChangeInCapacity\"","  cooldown               = 300"],"id":58},{"start":{"row":47,"column":0},"end":{"row":47,"column":2},"action":"remove","lines":["  "]},{"start":{"row":46,"column":33},"end":{"row":47,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":46,"column":2},"end":{"row":47,"column":68},"action":"remove","lines":["estimated_instance_warmup = 180","  autoscaling_group_name = module.autoscaling.autoscaling_group_name"],"id":59}],[{"start":{"row":37,"column":39},"end":{"row":38,"column":0},"action":"insert","lines":["",""],"id":60},{"start":{"row":38,"column":0},"end":{"row":38,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":38,"column":2},"end":{"row":39,"column":68},"action":"insert","lines":["estimated_instance_warmup = 180","  autoscaling_group_name = module.autoscaling.autoscaling_group_name"],"id":61}],[{"start":{"row":39,"column":68},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":62},{"start":{"row":40,"column":0},"end":{"row":40,"column":2},"action":"insert","lines":["  "]}],[{"start":{"row":47,"column":3},"end":{"row":48,"column":2},"action":"remove","lines":["","  "],"id":63}],[{"start":{"row":47,"column":3},"end":{"row":48,"column":2},"action":"remove","lines":["","  "],"id":64}],[{"start":{"row":48,"column":1},"end":{"row":49,"column":0},"action":"insert","lines":["",""],"id":65},{"start":{"row":49,"column":0},"end":{"row":50,"column":0},"action":"insert","lines":["",""]},{"start":{"row":50,"column":0},"end":{"row":50,"column":1},"action":"insert","lines":["#"]}],[{"start":{"row":50,"column":1},"end":{"row":50,"column":2},"action":"insert","lines":["#"],"id":66}],[{"start":{"row":50,"column":2},"end":{"row":50,"column":3},"action":"insert","lines":[" "],"id":67},{"start":{"row":50,"column":3},"end":{"row":50,"column":4},"action":"insert","lines":["T"]},{"start":{"row":50,"column":4},"end":{"row":50,"column":5},"action":"insert","lines":["T"]},{"start":{"row":50,"column":5},"end":{"row":50,"column":6},"action":"insert","lines":["S"]}],[{"start":{"row":50,"column":6},"end":{"row":50,"column":7},"action":"insert","lines":[" "],"id":68},{"start":{"row":50,"column":7},"end":{"row":50,"column":8},"action":"insert","lines":["-"]}],[{"start":{"row":50,"column":8},"end":{"row":50,"column":9},"action":"insert","lines":[" "],"id":69},{"start":{"row":50,"column":9},"end":{"row":50,"column":10},"action":"insert","lines":["S"]},{"start":{"row":50,"column":10},"end":{"row":50,"column":11},"action":"insert","lines":["c"]},{"start":{"row":50,"column":11},"end":{"row":50,"column":12},"action":"insert","lines":["a"]},{"start":{"row":50,"column":12},"end":{"row":50,"column":13},"action":"insert","lines":["l"]},{"start":{"row":50,"column":13},"end":{"row":50,"column":14},"action":"insert","lines":["i"]},{"start":{"row":50,"column":14},"end":{"row":50,"column":15},"action":"insert","lines":["n"]},{"start":{"row":50,"column":15},"end":{"row":50,"column":16},"action":"insert","lines":["g"]}],[{"start":{"row":50,"column":16},"end":{"row":50,"column":17},"action":"insert","lines":[" "],"id":70},{"start":{"row":50,"column":17},"end":{"row":50,"column":18},"action":"insert","lines":["p"]}],[{"start":{"row":50,"column":17},"end":{"row":50,"column":18},"action":"remove","lines":["p"],"id":71}],[{"start":{"row":50,"column":17},"end":{"row":50,"column":18},"action":"insert","lines":["P"],"id":72},{"start":{"row":50,"column":18},"end":{"row":50,"column":19},"action":"insert","lines":["o"]},{"start":{"row":50,"column":19},"end":{"row":50,"column":20},"action":"insert","lines":["l"]},{"start":{"row":50,"column":20},"end":{"row":50,"column":21},"action":"insert","lines":["i"]},{"start":{"row":50,"column":21},"end":{"row":50,"column":22},"action":"insert","lines":["c"]}],[{"start":{"row":50,"column":22},"end":{"row":50,"column":23},"action":"insert","lines":["y"],"id":73}],[{"start":{"row":50,"column":23},"end":{"row":50,"column":24},"action":"insert","lines":[" "],"id":74},{"start":{"row":50,"column":24},"end":{"row":50,"column":25},"action":"insert","lines":["-"]}],[{"start":{"row":50,"column":25},"end":{"row":50,"column":26},"action":"insert","lines":[" "],"id":75},{"start":{"row":50,"column":26},"end":{"row":50,"column":27},"action":"insert","lines":["2"]}],[{"start":{"row":50,"column":27},"end":{"row":50,"column":28},"action":"insert","lines":[":"],"id":76}],[{"start":{"row":50,"column":28},"end":{"row":50,"column":29},"action":"insert","lines":[" "],"id":77},{"start":{"row":50,"column":29},"end":{"row":50,"column":30},"action":"insert","lines":["B"]},{"start":{"row":50,"column":30},"end":{"row":50,"column":31},"action":"insert","lines":["a"]},{"start":{"row":50,"column":31},"end":{"row":50,"column":32},"action":"insert","lines":["s"]},{"start":{"row":50,"column":32},"end":{"row":50,"column":33},"action":"insert","lines":["e"]}],[{"start":{"row":50,"column":33},"end":{"row":50,"column":34},"action":"insert","lines":["d"],"id":78}],[{"start":{"row":50,"column":34},"end":{"row":50,"column":35},"action":"insert","lines":[" "],"id":79},{"start":{"row":50,"column":35},"end":{"row":50,"column":36},"action":"insert","lines":["O"]},{"start":{"row":50,"column":36},"end":{"row":50,"column":37},"action":"insert","lines":["n"]}],[{"start":{"row":50,"column":37},"end":{"row":50,"column":38},"action":"insert","lines":[" "],"id":80}],[{"start":{"row":50,"column":37},"end":{"row":50,"column":38},"action":"remove","lines":[" "],"id":81},{"start":{"row":50,"column":36},"end":{"row":50,"column":37},"action":"remove","lines":["n"]},{"start":{"row":50,"column":35},"end":{"row":50,"column":36},"action":"remove","lines":["O"]}],[{"start":{"row":50,"column":35},"end":{"row":50,"column":36},"action":"insert","lines":["o"],"id":82},{"start":{"row":50,"column":36},"end":{"row":50,"column":37},"action":"insert","lines":["n"]}],[{"start":{"row":50,"column":37},"end":{"row":50,"column":38},"action":"insert","lines":[" "],"id":83},{"start":{"row":50,"column":38},"end":{"row":50,"column":39},"action":"insert","lines":["A"]},{"start":{"row":50,"column":39},"end":{"row":50,"column":40},"action":"insert","lines":["L"]},{"start":{"row":50,"column":40},"end":{"row":50,"column":41},"action":"insert","lines":["B"]}],[{"start":{"row":50,"column":41},"end":{"row":50,"column":42},"action":"insert","lines":[" "],"id":84},{"start":{"row":50,"column":42},"end":{"row":50,"column":43},"action":"insert","lines":["T"]},{"start":{"row":50,"column":43},"end":{"row":50,"column":44},"action":"insert","lines":["A"]},{"start":{"row":50,"column":44},"end":{"row":50,"column":45},"action":"insert","lines":["r"]},{"start":{"row":50,"column":45},"end":{"row":50,"column":46},"action":"insert","lines":["g"]},{"start":{"row":50,"column":46},"end":{"row":50,"column":47},"action":"insert","lines":["e"]},{"start":{"row":50,"column":47},"end":{"row":50,"column":48},"action":"insert","lines":["t"]}],[{"start":{"row":50,"column":48},"end":{"row":50,"column":49},"action":"insert","lines":[" "],"id":85},{"start":{"row":50,"column":49},"end":{"row":50,"column":50},"action":"insert","lines":["R"]},{"start":{"row":50,"column":50},"end":{"row":50,"column":51},"action":"insert","lines":["e"]},{"start":{"row":50,"column":51},"end":{"row":50,"column":52},"action":"insert","lines":["q"]},{"start":{"row":50,"column":52},"end":{"row":50,"column":53},"action":"insert","lines":["u"]},{"start":{"row":50,"column":53},"end":{"row":50,"column":54},"action":"insert","lines":["e"]},{"start":{"row":50,"column":54},"end":{"row":50,"column":55},"action":"insert","lines":["s"]},{"start":{"row":50,"column":55},"end":{"row":50,"column":56},"action":"insert","lines":["t"]}],[{"start":{"row":50,"column":56},"end":{"row":50,"column":57},"action":"insert","lines":["s"],"id":86}],[{"start":{"row":50,"column":57},"end":{"row":51,"column":0},"action":"insert","lines":["",""],"id":87}],[{"start":{"row":51,"column":0},"end":{"row":64,"column":1},"action":"insert","lines":["resource \"aws_autoscaling_policy\" \"avg_cpu_policy_greater_than_50\" {","  name                   = \"avg-cpu-policy-greater-than-50\"","  policy_type = \"TargetTrackingScaling\"","  estimated_instance_warmup = 180","  autoscaling_group_name = module.autoscaling.autoscaling_group_name","  ","   target_tracking_configuration {","    predefined_metric_specification {","      predefined_metric_type = \"ASGAverageCPUUtilization\"","    }","","    target_value = 50.0","  }","}"],"id":88}],[{"start":{"row":51,"column":35},"end":{"row":51,"column":65},"action":"remove","lines":["avg_cpu_policy_greater_than_50"],"id":89},{"start":{"row":51,"column":35},"end":{"row":51,"column":36},"action":"insert","lines":["a"]},{"start":{"row":51,"column":36},"end":{"row":51,"column":37},"action":"insert","lines":["l"]},{"start":{"row":51,"column":37},"end":{"row":51,"column":38},"action":"insert","lines":["b"]},{"start":{"row":51,"column":38},"end":{"row":51,"column":39},"action":"insert","lines":["_"]},{"start":{"row":51,"column":39},"end":{"row":51,"column":40},"action":"insert","lines":["t"]},{"start":{"row":51,"column":40},"end":{"row":51,"column":41},"action":"insert","lines":["a"]}],[{"start":{"row":51,"column":41},"end":{"row":51,"column":42},"action":"insert","lines":["r"],"id":90},{"start":{"row":51,"column":42},"end":{"row":51,"column":43},"action":"insert","lines":["g"]},{"start":{"row":51,"column":43},"end":{"row":51,"column":44},"action":"insert","lines":["e"]},{"start":{"row":51,"column":44},"end":{"row":51,"column":45},"action":"insert","lines":["t"]}],[{"start":{"row":51,"column":45},"end":{"row":51,"column":46},"action":"insert","lines":["_"],"id":91},{"start":{"row":51,"column":46},"end":{"row":51,"column":47},"action":"insert","lines":["r"]},{"start":{"row":51,"column":47},"end":{"row":51,"column":48},"action":"insert","lines":["e"]},{"start":{"row":51,"column":48},"end":{"row":51,"column":49},"action":"insert","lines":["q"]},{"start":{"row":51,"column":49},"end":{"row":51,"column":50},"action":"insert","lines":["u"]},{"start":{"row":51,"column":50},"end":{"row":51,"column":51},"action":"insert","lines":["e"]},{"start":{"row":51,"column":51},"end":{"row":51,"column":52},"action":"insert","lines":["s"]},{"start":{"row":51,"column":52},"end":{"row":51,"column":53},"action":"insert","lines":["t"]}],[{"start":{"row":51,"column":35},"end":{"row":51,"column":53},"action":"remove","lines":["alb_target_request"],"id":92},{"start":{"row":51,"column":35},"end":{"row":51,"column":70},"action":"insert","lines":["alb_target_requests_greater_than_yy"]}],[{"start":{"row":51,"column":69},"end":{"row":51,"column":70},"action":"remove","lines":["y"],"id":93},{"start":{"row":51,"column":68},"end":{"row":51,"column":69},"action":"remove","lines":["y"]}],[{"start":{"row":51,"column":68},"end":{"row":51,"column":69},"action":"insert","lines":["2"],"id":94},{"start":{"row":51,"column":69},"end":{"row":51,"column":70},"action":"insert","lines":["0"]}],[{"start":{"row":52,"column":29},"end":{"row":52,"column":58},"action":"remove","lines":["vg-cpu-policy-greater-than-50"],"id":95},{"start":{"row":52,"column":28},"end":{"row":52,"column":29},"action":"remove","lines":["a"]}],[{"start":{"row":52,"column":28},"end":{"row":52,"column":29},"action":"insert","lines":["a"],"id":96},{"start":{"row":52,"column":29},"end":{"row":52,"column":30},"action":"insert","lines":[";"]}],[{"start":{"row":52,"column":29},"end":{"row":52,"column":30},"action":"remove","lines":[";"],"id":97}],[{"start":{"row":52,"column":29},"end":{"row":52,"column":30},"action":"insert","lines":["l"],"id":98},{"start":{"row":52,"column":30},"end":{"row":52,"column":31},"action":"insert","lines":["b"]},{"start":{"row":52,"column":31},"end":{"row":52,"column":32},"action":"insert","lines":["-"]}],[{"start":{"row":52,"column":32},"end":{"row":52,"column":33},"action":"insert","lines":["t"],"id":99},{"start":{"row":52,"column":33},"end":{"row":52,"column":34},"action":"insert","lines":["a"]},{"start":{"row":52,"column":34},"end":{"row":52,"column":35},"action":"insert","lines":["r"]}],[{"start":{"row":52,"column":32},"end":{"row":52,"column":35},"action":"remove","lines":["tar"],"id":100},{"start":{"row":52,"column":32},"end":{"row":52,"column":61},"action":"insert","lines":["target_tracking_configuration"]}],[{"start":{"row":52,"column":60},"end":{"row":52,"column":61},"action":"remove","lines":["n"],"id":101},{"start":{"row":52,"column":59},"end":{"row":52,"column":60},"action":"remove","lines":["o"]},{"start":{"row":52,"column":58},"end":{"row":52,"column":59},"action":"remove","lines":["i"]},{"start":{"row":52,"column":57},"end":{"row":52,"column":58},"action":"remove","lines":["t"]},{"start":{"row":52,"column":56},"end":{"row":52,"column":57},"action":"remove","lines":["a"]},{"start":{"row":52,"column":55},"end":{"row":52,"column":56},"action":"remove","lines":["r"]},{"start":{"row":52,"column":54},"end":{"row":52,"column":55},"action":"remove","lines":["u"]},{"start":{"row":52,"column":53},"end":{"row":52,"column":54},"action":"remove","lines":["g"]},{"start":{"row":52,"column":52},"end":{"row":52,"column":53},"action":"remove","lines":["i"]},{"start":{"row":52,"column":51},"end":{"row":52,"column":52},"action":"remove","lines":["f"]},{"start":{"row":52,"column":50},"end":{"row":52,"column":51},"action":"remove","lines":["n"]},{"start":{"row":52,"column":49},"end":{"row":52,"column":50},"action":"remove","lines":["o"]},{"start":{"row":52,"column":48},"end":{"row":52,"column":49},"action":"remove","lines":["c"]}],[{"start":{"row":52,"column":32},"end":{"row":52,"column":48},"action":"remove","lines":["target_tracking_"],"id":102}],[{"start":{"row":52,"column":32},"end":{"row":52,"column":33},"action":"insert","lines":["t"],"id":103},{"start":{"row":52,"column":33},"end":{"row":52,"column":34},"action":"insert","lines":["a"]},{"start":{"row":52,"column":34},"end":{"row":52,"column":35},"action":"insert","lines":["r"]},{"start":{"row":52,"column":35},"end":{"row":52,"column":36},"action":"insert","lines":["g"]},{"start":{"row":52,"column":36},"end":{"row":52,"column":37},"action":"insert","lines":["e"]},{"start":{"row":52,"column":37},"end":{"row":52,"column":38},"action":"insert","lines":["t"]},{"start":{"row":52,"column":38},"end":{"row":52,"column":39},"action":"insert","lines":["-"]},{"start":{"row":52,"column":39},"end":{"row":52,"column":40},"action":"insert","lines":["r"]},{"start":{"row":52,"column":40},"end":{"row":52,"column":41},"action":"insert","lines":["e"]}],[{"start":{"row":52,"column":41},"end":{"row":52,"column":42},"action":"insert","lines":["q"],"id":104}],[{"start":{"row":52,"column":39},"end":{"row":52,"column":42},"action":"remove","lines":["req"],"id":105},{"start":{"row":52,"column":39},"end":{"row":52,"column":47},"action":"insert","lines":["requests"]}],[{"start":{"row":52,"column":47},"end":{"row":52,"column":48},"action":"insert","lines":["-"],"id":106},{"start":{"row":52,"column":48},"end":{"row":52,"column":49},"action":"insert","lines":["g"]},{"start":{"row":52,"column":49},"end":{"row":52,"column":50},"action":"insert","lines":["r"]}],[{"start":{"row":52,"column":48},"end":{"row":52,"column":50},"action":"remove","lines":["gr"],"id":107},{"start":{"row":52,"column":48},"end":{"row":52,"column":55},"action":"insert","lines":["greater"]}],[{"start":{"row":52,"column":55},"end":{"row":52,"column":56},"action":"insert","lines":["-"],"id":108},{"start":{"row":52,"column":56},"end":{"row":52,"column":57},"action":"insert","lines":["t"]},{"start":{"row":52,"column":57},"end":{"row":52,"column":58},"action":"insert","lines":["h"]}],[{"start":{"row":52,"column":56},"end":{"row":52,"column":58},"action":"remove","lines":["th"],"id":109},{"start":{"row":52,"column":56},"end":{"row":52,"column":60},"action":"insert","lines":["than"]},{"start":{"row":52,"column":60},"end":{"row":52,"column":61},"action":"insert","lines":["\\"]}],[{"start":{"row":52,"column":60},"end":{"row":52,"column":61},"action":"remove","lines":["\\"],"id":110}],[{"start":{"row":52,"column":60},"end":{"row":52,"column":61},"action":"insert","lines":["-"],"id":111},{"start":{"row":52,"column":61},"end":{"row":52,"column":62},"action":"insert","lines":["2"]},{"start":{"row":52,"column":62},"end":{"row":52,"column":63},"action":"insert","lines":["0"]}],[{"start":{"row":59,"column":32},"end":{"row":59,"column":56},"action":"remove","lines":["ASGAverageCPUUtilization"],"id":112},{"start":{"row":59,"column":32},"end":{"row":59,"column":58},"action":"insert","lines":["ALBTargetGroupRequestCount"]}],[{"start":{"row":59,"column":32},"end":{"row":59,"column":58},"action":"remove","lines":["ALBTargetGroupRequestCount"],"id":113},{"start":{"row":59,"column":32},"end":{"row":59,"column":47},"action":"insert","lines":["ALBRequestCount"]}],[{"start":{"row":59,"column":32},"end":{"row":59,"column":47},"action":"remove","lines":["ALBRequestCount"],"id":114},{"start":{"row":59,"column":32},"end":{"row":59,"column":56},"action":"insert","lines":["ALBRequestCountPerTarget"]}],[{"start":{"row":59,"column":57},"end":{"row":60,"column":0},"action":"insert","lines":["",""],"id":115},{"start":{"row":60,"column":0},"end":{"row":60,"column":6},"action":"insert","lines":["      "]},{"start":{"row":60,"column":6},"end":{"row":60,"column":7},"action":"insert","lines":["r"]},{"start":{"row":60,"column":7},"end":{"row":60,"column":8},"action":"insert","lines":["e"]},{"start":{"row":60,"column":8},"end":{"row":60,"column":9},"action":"insert","lines":["s"]},{"start":{"row":60,"column":9},"end":{"row":60,"column":10},"action":"insert","lines":["o"]}],[{"start":{"row":60,"column":6},"end":{"row":60,"column":10},"action":"remove","lines":["reso"],"id":116},{"start":{"row":60,"column":6},"end":{"row":60,"column":20},"action":"insert","lines":["resource_label"]}],[{"start":{"row":60,"column":20},"end":{"row":60,"column":21},"action":"insert","lines":[" "],"id":117},{"start":{"row":60,"column":21},"end":{"row":60,"column":22},"action":"insert","lines":["="]}],[{"start":{"row":60,"column":22},"end":{"row":60,"column":23},"action":"insert","lines":[" "],"id":118}],[{"start":{"row":60,"column":23},"end":{"row":60,"column":25},"action":"insert","lines":["\"\""],"id":119}],[{"start":{"row":60,"column":24},"end":{"row":60,"column":25},"action":"insert","lines":["$"],"id":120},{"start":{"row":60,"column":25},"end":{"row":60,"column":26},"action":"insert","lines":["{"]},{"start":{"row":60,"column":26},"end":{"row":60,"column":27},"action":"insert","lines":["}"]}],[{"start":{"row":60,"column":26},"end":{"row":60,"column":50},"action":"insert","lines":["module.alb.lb_arn_suffix"],"id":121}],[{"start":{"row":60,"column":51},"end":{"row":60,"column":52},"action":"insert","lines":["/"],"id":122},{"start":{"row":60,"column":52},"end":{"row":60,"column":53},"action":"insert","lines":["$"]},{"start":{"row":60,"column":53},"end":{"row":60,"column":54},"action":"insert","lines":["{"]},{"start":{"row":60,"column":54},"end":{"row":60,"column":55},"action":"insert","lines":["}"]}],[{"start":{"row":60,"column":54},"end":{"row":60,"column":90},"action":"insert","lines":["module.alb.target_group_arn_suffixes"],"id":123}],[{"start":{"row":60,"column":90},"end":{"row":60,"column":92},"action":"insert","lines":["[]"],"id":124}],[{"start":{"row":60,"column":91},"end":{"row":60,"column":92},"action":"insert","lines":["0"],"id":125}],[{"start":{"row":63,"column":19},"end":{"row":63,"column":20},"action":"remove","lines":["5"],"id":126},{"start":{"row":63,"column":19},"end":{"row":63,"column":20},"action":"insert","lines":["2"]}],[{"start":{"row":15,"column":0},"end":{"row":15,"column":1},"action":"remove","lines":[" "],"id":127,"ignore":true},{"start":{"row":36,"column":25},"end":{"row":36,"column":28},"action":"insert","lines":["   "]},{"start":{"row":37,"column":14},"end":{"row":37,"column":28},"action":"insert","lines":["              "]},{"start":{"row":39,"column":25},"end":{"row":39,"column":28},"action":"insert","lines":["   "]},{"start":{"row":40,"column":0},"end":{"row":41,"column":1},"action":"remove","lines":["  "," "]},{"start":{"row":40,"column":0},"end":{"row":41,"column":0},"action":"insert","lines":["",""]},{"start":{"row":52,"column":25},"end":{"row":52,"column":28},"action":"insert","lines":["   "]},{"start":{"row":53,"column":14},"end":{"row":53,"column":28},"action":"insert","lines":["              "]},{"start":{"row":55,"column":25},"end":{"row":55,"column":28},"action":"insert","lines":["   "]},{"start":{"row":56,"column":0},"end":{"row":57,"column":1},"action":"remove","lines":["  "," "]},{"start":{"row":56,"column":0},"end":{"row":57,"column":0},"action":"insert","lines":["",""]},{"start":{"row":60,"column":20},"end":{"row":60,"column":28},"action":"insert","lines":["        "]}]]},"ace":{"folds":[],"scrolltop":670,"scrollleft":0,"selection":{"start":{"row":34,"column":0},"end":{"row":65,"column":1},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":32,"state":"start","mode":"ace/mode/terraform"}},"timestamp":1665593548591,"hash":"e81267cef78532c1aefa468f87c67d82bf41a958"}