module MicottersHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_micotters_path
    elsif action_name == 'edit'
      micotter_path
    end
  end
end
