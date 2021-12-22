# -- ERROR CODES --
export ERROR=1
export ERROR_INVALID_OPTIONS=2

export ERROR_PROJECT_EXISTS=3
export ERROR_PROJECT_NOT_EXISTS=4

export ERROR_UNKNOWN_PLUGIN=5
export ERROR_UNKNOWN_PROJECT=8
export ERROR_UNKNOWN_FLAG=6

export ERROR_ILLEGAL_OP=7

# -- FLAGS --
export FLAG_SILENT=0
export FLAG_OVERWRITE=0

# TODO: this variable isn't well named.
export FLAG_COLORED_OUTPUT=0

# -- PATHS --
# export FRAMEWORK_PATH=""
export PLUGINS_PATH="$FRAMEWORK_PATH/plugins"
export FRAMEWORK_BIN="$FRAMEWORK_PATH/bin"
export ASSET_PATH="$FRAMEWORK_PATH/assets"
export TEMPLATE_PATH="$ASSET_PATH/template.tar.xz"
export FRAMEWORK_SOURCE_PATH="$FRAMEWORK_PATH/src"
export UTILITIES_PATH="$FRAMEWORK_SOURCE_PATH/utils"
export FRAMEWORK_ROUTE="$FRAMEWORK_SOURCE_PATH/module"
export FRAMEWORK_CONFIG_DIR="$HOME/.config/$FRAMEWORK_NAME"
export FRAMEWORK_CONFIG="$FRAMEWORK_CONFIG_DIR/env.sh"
export CUSTOM_PLUGINS_PATH="$FRAMEWORK_CONFIG_DIR/plugins"
export PROJECT_PLUGIN=""

# -- SHELL OPTIONS --
export LC_ALL=C

# -- FRAMEWORK VARIABLES --
export FRAMEWORK_NAME="pj"
export FRAMEWORK_MODULE_NAME=0
export FRAMEWORK_ARGUMENTS=0
export DEFAULT_FRAMEWORK_ROUTE="$FRAMEWORK_ROUTE/help"

# -- DEBUG VARIABLES --
export DEBUG_MODULE_NAME=0
export DEBUG=0

# -- load user env --
[ -e $FRAMEWORK_CONFIG ] && . $FRAMEWORK_CONFIG

# -- dependent on user env --
export PROJECTS_DATA="$PROJECTS_PATH/.$FRAMEWORK_NAME"
export ARCHIVE_PATH="$PROJECTS_DATA/archives"

# check env
# all variables need to be set !
. "$UTILITIES_PATH/env_check.sh"

# -- EXPECTED VARIABLES --
# export PROJECTS_PATH=""
# export PROJECT_FILE_PATH=""
# export TEMPLATE_PATH=""
# export ARCHIVE_PATH=""
