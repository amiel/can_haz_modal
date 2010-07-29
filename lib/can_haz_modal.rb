module CanHazModal
  def self.included(base)
    base.before_filter :adjust_format_for_partial
    base.layout :no_layout_for_xhr
    base.helper_method :is_partial?
  end
  
  private
  def no_layout_for_xhr
    is_partial? ? nil : 'application'
  end

  def adjust_format_for_partial
    if request.format == :partial then
      @__partial = !!request.xhr?
      request.format = :html # reset format to html so that people don't have to rename their view files
    else
      @__partial = false
    end
  end
  
  def is_partial?
    @__partial
  end
end