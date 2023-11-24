package metub.abac

import future.keywords.if
import future.keywords.in
import future.keywords.every

default allow := false

i_permission := concat(":", [input.resource.type, input.action])

rule_match(x) {
	some i, x.role_id in data.users[input.user].roles
}

rule_match(x) {
	x.user_id == input.user
}

allow if {

    # find rule of  user
	some k, v in data.rules
    v.permission == i_permission
    rule_match(v)

    # matching rule of user
    data.metub.rule[concat("_", ["rule", k])].allow
}