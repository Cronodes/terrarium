############################################################
# Description: Runs once when downloading the pack
############################################################

data merge storage tr:storage {root:{gamerules:{doCustomMobSpawning:1b}}}

tellraw @a [{"translate":"pack.tr","color":"#008725","bold":true,"italic":true},{"text":" "},{"translate":"pack.tr.version","color":"#008725","bold":true,"italic":true}]