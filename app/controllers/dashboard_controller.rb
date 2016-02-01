class DashboardController < ApplicationController
  def index
    # goes to the database and runs the RAW SQL: select * from mountains;
    @mountains = current_user.mountains
  end
end
