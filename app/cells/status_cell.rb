class StatusCell < Cell::Base
  def index
    @params=params
    render
  end
end
