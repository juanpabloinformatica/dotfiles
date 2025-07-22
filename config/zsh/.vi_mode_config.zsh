# The plugin will auto execute this `zvm_after_select_vi_mode` function
function zvm_after_select_vi_mode() {
  case $ZVM_MODE in
    $ZVM_MODE_NORMAL)
      RPROMPT="-- NORMAL --"

      # Something you want to do...
      ;;
    $ZVM_MODE_INSERT)
      RPROMPT="-- INSERT --"
      # Something you want to do...
      ;;
    $ZVM_MODE_VISUAL)
      RPROMPT="-- VISUAL --"
      # Something you want to do...
      ;;
    $ZVM_MODE_VISUAL_LINE)
      # Something you want to do...
      ;;
    $ZVM_MODE_REPLACE)
      # Something you want to do...
      ;;
  esac
}
