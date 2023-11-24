package metub.rbac

import future.keywords.if
import future.keywords.in

default allow := false

permission := concat(":", [input.resource.type, input.action])

allow if {
	some p in data.users[input.user].permissions
    p == permission
}

allow if {
	is_array(input.resource.project_ids)
    some id in input.resource.project_ids
    some p in data.users[input.user].projects[id].permissions
    p == permission
}
