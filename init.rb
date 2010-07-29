config.to_prepare {
  ApplicationController.class_eval { include CanHazModal }
  Mime::Type.register_alias 'text/html', :partial
}