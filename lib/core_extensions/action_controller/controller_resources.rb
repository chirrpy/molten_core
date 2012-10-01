module ControllerResources
  def qualified_name
    self.controller_path.gsub('/','-')
  end

  def qualified_action_path
    "#{self.qualified_name}-#{self.action_name}"
  end

  def qualified_full_path
    self.request.fullpath.underscore.gsub(/[\/=]/, '-').gsub('?', '_')[1..-1]
  end
end
