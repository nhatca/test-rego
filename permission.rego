package metub.permission

import future.keywords.if

default allow := false

# check permission with method RBAC
allow if {
    data.metub.rbac.allow
}

# check permission with method ABAC
allow if {
    data.metub.abac.allow
}
