#> hsj.iris:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load

# IDE storage definitions for Spyglass
#define storage hsj.iris:data
#define storage hsj.iris:args
#define storage hsj.iris:settings
#define storage hsj.iris:output

# Setup scoreboard and storage
function hsj.iris:setup/scoreboard
execute unless data storage hsj.iris:data is_setup run function hsj.iris:setup/storage
