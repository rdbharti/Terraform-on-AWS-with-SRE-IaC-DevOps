{"filter":false,"title":"c2-v3-get-instancetype-supported-per-az-in-a-region.tf","tooltip":"/05-Terraform-Loops-MetaArguments-SplatOperator/05-03-Utility-Project/terraform-manifests/c2-v3-get-instancetype-supported-per-az-in-a-region.tf","undoManager":{"mark":100,"position":100,"stack":[[{"start":{"row":16,"column":40},"end":{"row":16,"column":41},"action":"insert","lines":["."],"id":15},{"start":{"row":16,"column":41},"end":{"row":16,"column":42},"action":"insert","lines":["m"]},{"start":{"row":16,"column":42},"end":{"row":16,"column":43},"action":"insert","lines":["u"]}],[{"start":{"row":16,"column":42},"end":{"row":16,"column":43},"action":"remove","lines":["u"],"id":16}],[{"start":{"row":16,"column":42},"end":{"row":16,"column":43},"action":"insert","lines":["y"],"id":17}],[{"start":{"row":16,"column":41},"end":{"row":16,"column":43},"action":"remove","lines":["my"],"id":18},{"start":{"row":16,"column":41},"end":{"row":16,"column":61},"action":"insert","lines":["my_availabilityzones"]}],[{"start":{"row":16,"column":61},"end":{"row":16,"column":62},"action":"insert","lines":["."],"id":19}],[{"start":{"row":16,"column":62},"end":{"row":16,"column":63},"action":"insert","lines":["n"],"id":20},{"start":{"row":16,"column":63},"end":{"row":16,"column":64},"action":"insert","lines":["a"]}],[{"start":{"row":16,"column":62},"end":{"row":16,"column":64},"action":"remove","lines":["na"],"id":21},{"start":{"row":16,"column":62},"end":{"row":16,"column":66},"action":"insert","lines":["name"]}],[{"start":{"row":16,"column":66},"end":{"row":16,"column":67},"action":"insert","lines":["s"],"id":22}],[{"start":{"row":16,"column":13},"end":{"row":16,"column":14},"action":"insert","lines":["t"],"id":23},{"start":{"row":16,"column":14},"end":{"row":16,"column":15},"action":"insert","lines":["o"]},{"start":{"row":16,"column":15},"end":{"row":16,"column":16},"action":"insert","lines":["s"]},{"start":{"row":16,"column":16},"end":{"row":16,"column":17},"action":"insert","lines":["e"]},{"start":{"row":16,"column":17},"end":{"row":16,"column":18},"action":"insert","lines":["t"]}],[{"start":{"row":16,"column":18},"end":{"row":16,"column":20},"action":"insert","lines":["()"],"id":24}],[{"start":{"row":16,"column":20},"end":{"row":16,"column":74},"action":"remove","lines":["data.aws_availability_zones.my_availabilityzones.names"],"id":25}],[{"start":{"row":16,"column":19},"end":{"row":16,"column":73},"action":"insert","lines":["data.aws_availability_zones.my_availabilityzones.names"],"id":26}],[{"start":{"row":3,"column":50},"end":{"row":3,"column":51},"action":"remove","lines":["s"],"id":27}],[{"start":{"row":16,"column":66},"end":{"row":16,"column":67},"action":"remove","lines":["s"],"id":28}],[{"start":{"row":32,"column":0},"end":{"row":35,"column":1},"action":"remove","lines":["output \"output_v2_1\" {","  #value = data.aws_ec2_instance_type_offerings.my_instance_type1.instance_types","  value = [for t in data.aws_ec2_instance_type_offerings.my_instance_type2 : t.instance_types]","}"],"id":29}],[{"start":{"row":34,"column":0},"end":{"row":39,"column":1},"action":"remove","lines":["#Output-2","# Create a Map with Key as Availability Zone and value as Instance Type supported","","output \"output_v2_2\" {","    value = {for az, t in data.aws_ec2_instance_type_offerings.my_instance_type2 : az => t.instance_types}","}"],"id":30},{"start":{"row":33,"column":0},"end":{"row":34,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":33,"column":0},"end":{"row":34,"column":73},"action":"insert","lines":["# Output-1","# Basic Output: All Availability Zones mapped to Supported Instance Types"],"id":31}],[{"start":{"row":34,"column":73},"end":{"row":35,"column":0},"action":"insert","lines":["",""],"id":32},{"start":{"row":35,"column":0},"end":{"row":36,"column":0},"action":"insert","lines":["",""]},{"start":{"row":36,"column":0},"end":{"row":37,"column":0},"action":"insert","lines":["",""]},{"start":{"row":37,"column":0},"end":{"row":38,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":38,"column":0},"end":{"row":39,"column":57},"action":"insert","lines":["# Output-2","# Filtered Output: Exclude Unsupported Availability Zones"],"id":33}],[{"start":{"row":39,"column":57},"end":{"row":40,"column":0},"action":"insert","lines":["",""],"id":34},{"start":{"row":40,"column":0},"end":{"row":41,"column":0},"action":"insert","lines":["",""]},{"start":{"row":41,"column":0},"end":{"row":42,"column":0},"action":"insert","lines":["",""]},{"start":{"row":42,"column":0},"end":{"row":43,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":43,"column":0},"end":{"row":46,"column":79},"action":"insert","lines":["","# Output-3","# Filtered Output: with Keys Function - Which gets keys from a Map","# This will return the list of availability zones supported for a instance type"],"id":35}],[{"start":{"row":46,"column":79},"end":{"row":47,"column":0},"action":"insert","lines":["",""],"id":36},{"start":{"row":47,"column":0},"end":{"row":48,"column":0},"action":"insert","lines":["",""]},{"start":{"row":48,"column":0},"end":{"row":49,"column":0},"action":"insert","lines":["",""]},{"start":{"row":49,"column":0},"end":{"row":50,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":50,"column":0},"end":{"row":51,"column":94},"action":"insert","lines":["# Output-4 (additional learning)","# Filtered Output: As the output is list now, get the first item from list (just for learning)"],"id":37}],[{"start":{"row":51,"column":94},"end":{"row":52,"column":0},"action":"insert","lines":["",""],"id":38},{"start":{"row":52,"column":0},"end":{"row":53,"column":0},"action":"insert","lines":["",""]},{"start":{"row":53,"column":0},"end":{"row":54,"column":0},"action":"insert","lines":["",""]},{"start":{"row":54,"column":0},"end":{"row":55,"column":0},"action":"insert","lines":["",""]}],[{"start":{"row":34,"column":73},"end":{"row":35,"column":0},"action":"insert","lines":["",""],"id":39},{"start":{"row":35,"column":0},"end":{"row":35,"column":1},"action":"insert","lines":["o"]},{"start":{"row":35,"column":1},"end":{"row":35,"column":2},"action":"insert","lines":["u"]},{"start":{"row":35,"column":2},"end":{"row":35,"column":3},"action":"insert","lines":["t"]}],[{"start":{"row":35,"column":0},"end":{"row":35,"column":3},"action":"remove","lines":["out"],"id":40},{"start":{"row":35,"column":0},"end":{"row":35,"column":6},"action":"insert","lines":["output"]}],[{"start":{"row":35,"column":6},"end":{"row":35,"column":7},"action":"insert","lines":[" "],"id":41}],[{"start":{"row":35,"column":7},"end":{"row":35,"column":9},"action":"insert","lines":["\"\""],"id":42}],[{"start":{"row":35,"column":8},"end":{"row":35,"column":9},"action":"insert","lines":["o"],"id":43},{"start":{"row":35,"column":9},"end":{"row":35,"column":10},"action":"insert","lines":["u"]},{"start":{"row":35,"column":10},"end":{"row":35,"column":11},"action":"insert","lines":["t"]},{"start":{"row":35,"column":11},"end":{"row":35,"column":12},"action":"insert","lines":["p"]},{"start":{"row":35,"column":12},"end":{"row":35,"column":13},"action":"insert","lines":["u"]},{"start":{"row":35,"column":13},"end":{"row":35,"column":14},"action":"insert","lines":["t"]}],[{"start":{"row":35,"column":14},"end":{"row":35,"column":15},"action":"insert","lines":["_"],"id":44},{"start":{"row":35,"column":15},"end":{"row":35,"column":16},"action":"insert","lines":["v"]},{"start":{"row":35,"column":16},"end":{"row":35,"column":17},"action":"insert","lines":["3"]},{"start":{"row":35,"column":17},"end":{"row":35,"column":18},"action":"insert","lines":["_"]}],[{"start":{"row":35,"column":18},"end":{"row":35,"column":19},"action":"insert","lines":["1"],"id":45}],[{"start":{"row":35,"column":20},"end":{"row":35,"column":21},"action":"insert","lines":[" "],"id":46},{"start":{"row":35,"column":21},"end":{"row":35,"column":22},"action":"insert","lines":["{"]},{"start":{"row":35,"column":22},"end":{"row":35,"column":23},"action":"insert","lines":["}"]}],[{"start":{"row":35,"column":22},"end":{"row":37,"column":0},"action":"insert","lines":["","    ",""],"id":47}],[{"start":{"row":36,"column":4},"end":{"row":36,"column":5},"action":"insert","lines":["v"],"id":48},{"start":{"row":36,"column":5},"end":{"row":36,"column":6},"action":"insert","lines":["a"]}],[{"start":{"row":36,"column":4},"end":{"row":36,"column":6},"action":"remove","lines":["va"],"id":49},{"start":{"row":36,"column":4},"end":{"row":36,"column":10},"action":"insert","lines":["values"]}],[{"start":{"row":36,"column":9},"end":{"row":36,"column":10},"action":"remove","lines":["s"],"id":50}],[{"start":{"row":36,"column":9},"end":{"row":36,"column":10},"action":"insert","lines":[" "],"id":51},{"start":{"row":36,"column":10},"end":{"row":36,"column":11},"action":"insert","lines":["="]}],[{"start":{"row":36,"column":11},"end":{"row":36,"column":12},"action":"insert","lines":[" "],"id":52}],[{"start":{"row":36,"column":12},"end":{"row":36,"column":13},"action":"insert","lines":["{"],"id":53},{"start":{"row":36,"column":13},"end":{"row":36,"column":14},"action":"insert","lines":["}"]}],[{"start":{"row":36,"column":13},"end":{"row":38,"column":4},"action":"insert","lines":["","        ","    "],"id":54}],[{"start":{"row":37,"column":8},"end":{"row":37,"column":9},"action":"insert","lines":["f"],"id":55},{"start":{"row":37,"column":9},"end":{"row":37,"column":10},"action":"insert","lines":["o"]},{"start":{"row":37,"column":10},"end":{"row":37,"column":11},"action":"insert","lines":["r"]}],[{"start":{"row":37,"column":11},"end":{"row":37,"column":12},"action":"insert","lines":[" "],"id":56}],[{"start":{"row":37,"column":12},"end":{"row":37,"column":13},"action":"insert","lines":["a"],"id":57},{"start":{"row":37,"column":13},"end":{"row":37,"column":14},"action":"insert","lines":["z"]}],[{"start":{"row":37,"column":14},"end":{"row":37,"column":15},"action":"insert","lines":[","],"id":58}],[{"start":{"row":37,"column":15},"end":{"row":37,"column":16},"action":"insert","lines":[" "],"id":59}],[{"start":{"row":37,"column":16},"end":{"row":37,"column":17},"action":"insert","lines":["d"],"id":60},{"start":{"row":37,"column":17},"end":{"row":37,"column":18},"action":"insert","lines":["e"]},{"start":{"row":37,"column":18},"end":{"row":37,"column":19},"action":"insert","lines":["t"]},{"start":{"row":37,"column":19},"end":{"row":37,"column":20},"action":"insert","lines":["a"]},{"start":{"row":37,"column":20},"end":{"row":37,"column":21},"action":"insert","lines":["i"]},{"start":{"row":37,"column":21},"end":{"row":37,"column":22},"action":"insert","lines":["s"]}],[{"start":{"row":37,"column":21},"end":{"row":37,"column":22},"action":"remove","lines":["s"],"id":61}],[{"start":{"row":37,"column":21},"end":{"row":37,"column":22},"action":"insert","lines":["l"],"id":62},{"start":{"row":37,"column":22},"end":{"row":37,"column":23},"action":"insert","lines":["s"]}],[{"start":{"row":37,"column":23},"end":{"row":37,"column":24},"action":"insert","lines":[" "],"id":63},{"start":{"row":37,"column":24},"end":{"row":37,"column":25},"action":"insert","lines":["i"]},{"start":{"row":37,"column":25},"end":{"row":37,"column":26},"action":"insert","lines":["n"]}],[{"start":{"row":37,"column":26},"end":{"row":37,"column":27},"action":"insert","lines":[" "],"id":64},{"start":{"row":37,"column":27},"end":{"row":37,"column":28},"action":"insert","lines":["a"]}],[{"start":{"row":37,"column":28},"end":{"row":37,"column":29},"action":"insert","lines":["w"],"id":65},{"start":{"row":37,"column":29},"end":{"row":37,"column":30},"action":"insert","lines":["s"]}],[{"start":{"row":37,"column":27},"end":{"row":37,"column":30},"action":"remove","lines":["aws"],"id":66},{"start":{"row":37,"column":27},"end":{"row":37,"column":58},"action":"insert","lines":["aws_ec2_instance_type_offerings"]}],[{"start":{"row":37,"column":58},"end":{"row":37,"column":59},"action":"insert","lines":["."],"id":67},{"start":{"row":37,"column":59},"end":{"row":37,"column":60},"action":"insert","lines":["m"]}],[{"start":{"row":37,"column":59},"end":{"row":37,"column":60},"action":"remove","lines":["m"],"id":68},{"start":{"row":37,"column":59},"end":{"row":37,"column":75},"action":"insert","lines":["my_instance_type"]}],[{"start":{"row":37,"column":75},"end":{"row":37,"column":76},"action":"insert","lines":[" "],"id":69},{"start":{"row":37,"column":76},"end":{"row":37,"column":77},"action":"insert","lines":[":"]}],[{"start":{"row":37,"column":77},"end":{"row":37,"column":78},"action":"insert","lines":[" "],"id":70},{"start":{"row":37,"column":78},"end":{"row":37,"column":79},"action":"insert","lines":["a"]},{"start":{"row":37,"column":79},"end":{"row":37,"column":80},"action":"insert","lines":["z"]}],[{"start":{"row":37,"column":80},"end":{"row":37,"column":81},"action":"insert","lines":[" "],"id":71},{"start":{"row":37,"column":81},"end":{"row":37,"column":82},"action":"insert","lines":["="]},{"start":{"row":37,"column":82},"end":{"row":37,"column":83},"action":"insert","lines":[">"]}],[{"start":{"row":37,"column":83},"end":{"row":37,"column":84},"action":"insert","lines":[" "],"id":72}],[{"start":{"row":37,"column":84},"end":{"row":37,"column":85},"action":"insert","lines":["d"],"id":73},{"start":{"row":37,"column":85},"end":{"row":37,"column":86},"action":"insert","lines":["e"]}],[{"start":{"row":37,"column":84},"end":{"row":37,"column":86},"action":"remove","lines":["de"],"id":74},{"start":{"row":37,"column":84},"end":{"row":37,"column":91},"action":"insert","lines":["details"]}],[{"start":{"row":37,"column":91},"end":{"row":37,"column":92},"action":"insert","lines":["."],"id":75}],[{"start":{"row":37,"column":92},"end":{"row":37,"column":93},"action":"insert","lines":["i"],"id":76},{"start":{"row":37,"column":93},"end":{"row":37,"column":94},"action":"insert","lines":["n"]}],[{"start":{"row":37,"column":92},"end":{"row":37,"column":94},"action":"remove","lines":["in"],"id":77},{"start":{"row":37,"column":92},"end":{"row":37,"column":100},"action":"insert","lines":["instance"]}],[{"start":{"row":37,"column":100},"end":{"row":37,"column":101},"action":"insert","lines":["_"],"id":78},{"start":{"row":37,"column":101},"end":{"row":37,"column":102},"action":"insert","lines":["n"]},{"start":{"row":37,"column":102},"end":{"row":37,"column":103},"action":"insert","lines":["a"]},{"start":{"row":37,"column":103},"end":{"row":37,"column":104},"action":"insert","lines":["m"]},{"start":{"row":37,"column":104},"end":{"row":37,"column":105},"action":"insert","lines":["e"]}],[{"start":{"row":37,"column":101},"end":{"row":37,"column":105},"action":"remove","lines":["name"],"id":79},{"start":{"row":37,"column":101},"end":{"row":37,"column":102},"action":"insert","lines":["t"]},{"start":{"row":37,"column":102},"end":{"row":37,"column":103},"action":"insert","lines":["y"]},{"start":{"row":37,"column":103},"end":{"row":37,"column":104},"action":"insert","lines":["p"]},{"start":{"row":37,"column":104},"end":{"row":37,"column":105},"action":"insert","lines":["e"]}],[{"start":{"row":37,"column":27},"end":{"row":37,"column":28},"action":"insert","lines":["d"],"id":80},{"start":{"row":37,"column":28},"end":{"row":37,"column":29},"action":"insert","lines":["a"]},{"start":{"row":37,"column":29},"end":{"row":37,"column":30},"action":"insert","lines":["t"]},{"start":{"row":37,"column":30},"end":{"row":37,"column":31},"action":"insert","lines":["a"]},{"start":{"row":37,"column":31},"end":{"row":37,"column":32},"action":"insert","lines":["."]}],[{"start":{"row":37,"column":110},"end":{"row":37,"column":111},"action":"insert","lines":["s"],"id":81}],[{"start":{"row":46,"column":0},"end":{"row":50,"column":1},"action":"insert","lines":["output \"output_v3_1\" {","    value = {","        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type : az => details.instance_types","    }","}"],"id":82}],[{"start":{"row":46,"column":18},"end":{"row":46,"column":19},"action":"remove","lines":["1"],"id":83},{"start":{"row":46,"column":18},"end":{"row":46,"column":19},"action":"insert","lines":["2"]}],[{"start":{"row":48,"column":83},"end":{"row":49,"column":0},"action":"insert","lines":["",""],"id":84},{"start":{"row":49,"column":0},"end":{"row":49,"column":8},"action":"insert","lines":["        "]},{"start":{"row":49,"column":8},"end":{"row":50,"column":0},"action":"insert","lines":["",""]},{"start":{"row":50,"column":0},"end":{"row":50,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":49,"column":8},"end":{"row":49,"column":9},"action":"insert","lines":["i"],"id":85},{"start":{"row":49,"column":9},"end":{"row":49,"column":10},"action":"insert","lines":["f"]}],[{"start":{"row":49,"column":10},"end":{"row":49,"column":11},"action":"insert","lines":[" "],"id":86},{"start":{"row":49,"column":11},"end":{"row":49,"column":12},"action":"insert","lines":["l"]},{"start":{"row":49,"column":12},"end":{"row":49,"column":13},"action":"insert","lines":["e"]},{"start":{"row":49,"column":13},"end":{"row":49,"column":14},"action":"insert","lines":["n"]}],[{"start":{"row":49,"column":14},"end":{"row":49,"column":15},"action":"insert","lines":["g"],"id":87},{"start":{"row":49,"column":15},"end":{"row":49,"column":16},"action":"insert","lines":["t"]},{"start":{"row":49,"column":16},"end":{"row":49,"column":17},"action":"insert","lines":["h"]}],[{"start":{"row":49,"column":17},"end":{"row":49,"column":19},"action":"insert","lines":["()"],"id":88}],[{"start":{"row":49,"column":18},"end":{"row":49,"column":19},"action":"insert","lines":["d"],"id":89},{"start":{"row":49,"column":19},"end":{"row":49,"column":20},"action":"insert","lines":["e"]},{"start":{"row":49,"column":20},"end":{"row":49,"column":21},"action":"insert","lines":["t"]}],[{"start":{"row":49,"column":18},"end":{"row":49,"column":21},"action":"remove","lines":["det"],"id":90},{"start":{"row":49,"column":18},"end":{"row":49,"column":25},"action":"insert","lines":["details"]}],[{"start":{"row":49,"column":25},"end":{"row":49,"column":26},"action":"insert","lines":["."],"id":91},{"start":{"row":49,"column":26},"end":{"row":49,"column":27},"action":"insert","lines":["i"]},{"start":{"row":49,"column":27},"end":{"row":49,"column":28},"action":"insert","lines":["n"]}],[{"start":{"row":49,"column":26},"end":{"row":49,"column":28},"action":"remove","lines":["in"],"id":92},{"start":{"row":49,"column":26},"end":{"row":49,"column":40},"action":"insert","lines":["instance_types"]}],[{"start":{"row":49,"column":41},"end":{"row":49,"column":42},"action":"insert","lines":[" "],"id":93},{"start":{"row":49,"column":42},"end":{"row":49,"column":43},"action":"insert","lines":["!"]},{"start":{"row":49,"column":43},"end":{"row":49,"column":44},"action":"insert","lines":["="]}],[{"start":{"row":49,"column":44},"end":{"row":49,"column":45},"action":"insert","lines":[" "],"id":94},{"start":{"row":49,"column":45},"end":{"row":49,"column":46},"action":"insert","lines":["0"]}],[{"start":{"row":49,"column":46},"end":{"row":49,"column":47},"action":"insert","lines":[" "],"id":95}],[{"start":{"row":49,"column":8},"end":{"row":49,"column":47},"action":"remove","lines":["if length(details.instance_types) != 0 "],"id":96}],[{"start":{"row":49,"column":4},"end":{"row":49,"column":8},"action":"remove","lines":["    "],"id":97},{"start":{"row":49,"column":0},"end":{"row":49,"column":4},"action":"remove","lines":["    "]},{"start":{"row":48,"column":83},"end":{"row":49,"column":0},"action":"remove","lines":["",""]}],[{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "],"id":98}],[{"start":{"row":48,"column":82},"end":{"row":49,"column":0},"action":"remove","lines":["",""],"id":99},{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "]},{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "]},{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "]},{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "]},{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "]},{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "]}],[{"start":{"row":48,"column":82},"end":{"row":48,"column":83},"action":"remove","lines":[" "],"id":100}],[{"start":{"row":48,"column":83},"end":{"row":49,"column":0},"action":"insert","lines":["",""],"id":101},{"start":{"row":49,"column":0},"end":{"row":49,"column":8},"action":"insert","lines":["        "]}],[{"start":{"row":49,"column":36},"end":{"row":49,"column":37},"action":"insert","lines":[" "],"id":102}],[{"start":{"row":49,"column":37},"end":{"row":49,"column":76},"action":"insert","lines":["if length(details.instance_types) != 0 "],"id":103}],[{"start":{"row":57,"column":0},"end":{"row":58,"column":0},"action":"insert","lines":["",""],"id":104}],[{"start":{"row":58,"column":0},"end":{"row":63,"column":1},"action":"insert","lines":["output \"output_v3_2\" {","    value = {","        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type : ","        az => details.instance_types if length(details.instance_types) != 0 ","    }","}"],"id":105}],[{"start":{"row":58,"column":18},"end":{"row":58,"column":19},"action":"remove","lines":["2"],"id":106},{"start":{"row":58,"column":18},"end":{"row":58,"column":19},"action":"insert","lines":["3"]}],[{"start":{"row":59,"column":12},"end":{"row":59,"column":13},"action":"insert","lines":["k"],"id":107},{"start":{"row":59,"column":13},"end":{"row":59,"column":14},"action":"insert","lines":["e"]},{"start":{"row":59,"column":14},"end":{"row":59,"column":15},"action":"insert","lines":["y"]},{"start":{"row":59,"column":15},"end":{"row":59,"column":16},"action":"insert","lines":["s"]}],[{"start":{"row":59,"column":16},"end":{"row":59,"column":17},"action":"insert","lines":[" "],"id":108},{"start":{"row":59,"column":17},"end":{"row":59,"column":18},"action":"insert","lines":["("]}],[{"start":{"row":62,"column":5},"end":{"row":62,"column":6},"action":"insert","lines":[")"],"id":109}],[{"start":{"row":59,"column":12},"end":{"row":59,"column":16},"action":"remove","lines":["keys"],"id":110},{"start":{"row":59,"column":12},"end":{"row":59,"column":13},"action":"insert","lines":["v"]},{"start":{"row":59,"column":13},"end":{"row":59,"column":14},"action":"insert","lines":["a"]},{"start":{"row":59,"column":14},"end":{"row":59,"column":15},"action":"insert","lines":["l"]},{"start":{"row":59,"column":15},"end":{"row":59,"column":16},"action":"insert","lines":["u"]},{"start":{"row":59,"column":16},"end":{"row":59,"column":17},"action":"insert","lines":["e"]},{"start":{"row":59,"column":17},"end":{"row":59,"column":18},"action":"insert","lines":["s"]}],[{"start":{"row":59,"column":12},"end":{"row":59,"column":18},"action":"remove","lines":["values"],"id":111},{"start":{"row":59,"column":12},"end":{"row":59,"column":13},"action":"insert","lines":["k"]},{"start":{"row":59,"column":13},"end":{"row":59,"column":14},"action":"insert","lines":["e"]},{"start":{"row":59,"column":14},"end":{"row":59,"column":15},"action":"insert","lines":["y"]},{"start":{"row":59,"column":15},"end":{"row":59,"column":16},"action":"insert","lines":["s"]}],[{"start":{"row":69,"column":0},"end":{"row":75,"column":0},"action":"insert","lines":["output \"output_v3_3\" {","    value = keys ({","        for az, details in data.aws_ec2_instance_type_offerings.my_instance_type : ","        az => details.instance_types if length(details.instance_types) != 0 ","    })","}",""],"id":112}],[{"start":{"row":69,"column":18},"end":{"row":69,"column":19},"action":"remove","lines":["3"],"id":113},{"start":{"row":69,"column":18},"end":{"row":69,"column":19},"action":"insert","lines":["4"]}],[{"start":{"row":73,"column":6},"end":{"row":73,"column":8},"action":"insert","lines":["[]"],"id":114}],[{"start":{"row":73,"column":7},"end":{"row":73,"column":8},"action":"insert","lines":["0"],"id":115}]]},"ace":{"folds":[],"scrolltop":1262,"scrollleft":0,"selection":{"start":{"row":0,"column":0},"end":{"row":77,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":53,"state":"start","mode":"ace/mode/terraform"}},"timestamp":1665075955101,"hash":"866896a9d1ac879be19b798c6760162f5fd9246b"}