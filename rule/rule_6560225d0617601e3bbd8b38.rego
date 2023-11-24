package metub.rule.rule_6560225d0617601e3bbd8b38

import future.keywords.if
import future.keywords.in
import data.metub.set.set_655ed564d4ef4ab950e34554.allow as allow_set

default allow:= false

allow_permission if {
	"creators:read" == concat(":", [input.resource.type,input.action])
}

allow if {
	allow_set
	allow_permission
}

