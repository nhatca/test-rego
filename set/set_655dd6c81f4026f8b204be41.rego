package metub.abac.set_655dd6c81f4026f8b204be41

import future.keywords.in
import future.keywords.if

default allow:= false

allow if {
	allow_any_of
}

allow_any_of if {
	allow_any_of_0
}

allow_any_of_0 if {
	allow_any_of_0_all_of
}

allow_any_of_0_all_of if {
	allow_any_of_0_all_of_0
}

allow_any_of_0_all_of_0 if { 
	input.resource.attribute.name == "VietNam"
}

