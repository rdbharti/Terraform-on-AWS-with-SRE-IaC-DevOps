{"filter":false,"title":"variables.tf","tooltip":"/18-Develop-Terraform-Modules-Locally/terraform-manifests/mudules/aws-vpc/modules/vpc-endpoints/variables.tf","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":41,"column":0},"action":"insert","lines":["variable \"create\" {","  description = \"Determines whether resources will be created\"","  type        = bool","  default     = true","}","","variable \"vpc_id\" {","  description = \"The ID of the VPC in which the endpoint will be used\"","  type        = string","  default     = null","}","","variable \"endpoints\" {","  description = \"A map of interface and/or gateway endpoints containing their properties and configurations\"","  type        = any","  default     = {}","}","","variable \"security_group_ids\" {","  description = \"Default security group IDs to associate with the VPC endpoints\"","  type        = list(string)","  default     = []","}","","variable \"subnet_ids\" {","  description = \"Default subnets IDs to associate with the VPC endpoints\"","  type        = list(string)","  default     = []","}","","variable \"tags\" {","  description = \"A map of tags to use on all resources\"","  type        = map(string)","  default     = {}","}","","variable \"timeouts\" {","  description = \"Define maximum timeout for creating, updating, and deleting VPC endpoint resources\"","  type        = map(string)","  default     = {}","}",""],"id":1}]]},"ace":{"folds":[],"scrolltop":392,"scrollleft":0,"selection":{"start":{"row":41,"column":0},"end":{"row":41,"column":0},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1665941494827,"hash":"65cf63deb782077cb5a8d298bfac1483883155a9"}