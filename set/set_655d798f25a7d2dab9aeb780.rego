package metub.abac.set_655d798f25a7d2dab9aeb780

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

allow_any_of if {
	allow_any_of_1
}

allow_any_of_1 if {
	allow_any_of_1_any_of
}

allow_any_of_1_any_of if {
	allow_any_of_1_any_of_0
}

allow_any_of_1_any_of if {
	allow_any_of_1_any_of_1
}

allow_any_of_0_all_of_0 if { 
	input.resource.attribute.name == "Đông Lào 1"
}

allow_any_of_1_any_of_0 if { 
	input.resource.attribute.name == "Viet Nam 2"
}

allow_any_of_1_any_of_1 if { 
	input.resource.attribute.name == "Viet Nam 1"
}

