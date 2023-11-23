package metub.rbac

import future.keywords.if
import future.keywords.in

default allow := false

permission := concat(":", [input.resource.type,input.action])

allow if {
    some per in input.user.permissions
    permission == per
}

allow if {
	is_array(input.resource.project_ids)
    is_array(input.user.projects)
	some pro in input.user.projects
    some p_id in input.resource.project_ids
    is_array(pro.permissions)
    some per in pro.permissions
	pro.id == p_id
    per == permission
}