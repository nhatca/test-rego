package metub.abac.rule_655ed5a50617601e3bb5056e

import future.keywords.if
import data.abac.set_655ed564d4ef4ab950e34554 as allow_set

default allow:= false

allow_permission if {
	creators:read == concat(":", [input.resource.type,input.action])
}

allow_resource_in_project if {
	is_array(input.resource.attribute.project_ids)
	some project_id in input.resouce.attribute.project_ids
	"64661480c23d0cb0b420f2f8" == project_id
}

allow if {
	allow_set
	allow_permission
	allow_resource_in_project
}

