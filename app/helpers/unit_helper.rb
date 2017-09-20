module UnitHelper
    def color
    if @date_result == 0
       "list-group-item-warning"
    elsif @date_result > 0
       "list-group-item-success"
    else
       "list-group-item-danger"
    end


  end


end
