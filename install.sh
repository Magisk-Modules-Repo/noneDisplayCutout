SKIPMOUNT=false
PROPFILE=false
POSTFSDATA=false
LATESTARTSERVICE=false
REPLACE="
"
print_modname() {
  ui_print "*******************************"
  ui_print "*     None Display Cutout     *"
  ui_print "*        By MlgmXyysd.        *"
  ui_print "*   QQ Chat Group 855219808   *"
  ui_print "*  Telegram @Code_of_MeowCat  *"
  ui_print "*******************************"
}
on_install() {
  check_android_version()
  ui_print "- Extracting module files"
  unzip -o "$ZIPFILE" 'system/*' -d $MODPATH >&2
}
set_permissions() {
  set_perm_recursive $MODPATH 0 0 0755 0644
}
check_android_version() {
  ui_print "- Android API version is $API"
  [[ "$API" -ge 28} ]] || abort "! Please Install in Android P and above"
}