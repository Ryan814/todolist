# :nodoc:
module TodosHelper
  # 回傳刪除按鈕
  def todo_delete_button(todo)
    # 無法刪除的 todos 直接回傳 nil
    return unless todo.can_destroy
    link_to '<span class="glyphicon glyphicon-remove"></span>DEL'.html_safe, todo_path(todo), class: 'btn btn-danger btn-xs', method: :delete, data: { confirm: 'Delete this item ?' }
  end

  # 回傳編輯按鈕
  def todo_edit_button(todo)
    link_to '<span class= "glyphicon glyphicon-edit"></span>EDIT'.html_safe, edit_todo_path(todo), class: 'btn btn-info btn-xs' 
  end
end
