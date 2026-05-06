#> hsj.iris:setup/storage
#
# Sets up storage for Iris
#
# @within hsj.iris:setup/load

data merge storage hsj.iris:data {is_setup: 1b}

# Set default settings
data merge storage hsj.iris:settings {\
    TargetEntities: false,\
    MaxRecursionDepth: 16,\
    Blacklist: "#hsj.iris:shape_groups/air"\
}
