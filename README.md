# hks3-munde-framework-defaults-demo

demo plugin for koha plugin hook for framework_defaults_override

this plugin has the following options
$tag, $subfield, $value, $form_mode

ie
marc tag, marc subfield, the "before value", the action which triggered the change

possible actions are
new, duplicate, changed (Framework), imported (via SRU)

the plugin has to return a hashref containing two keys

apply_override - undef or a true if the default value from the framework should be applied
override_default_value - a completly new derived value


