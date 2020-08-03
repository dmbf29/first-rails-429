class PagesController < ApplicationController

  def about
    # automagically looks for view with the same name
    # render 'about.html.erb'
  end

  # http://localhost:3000/contact?student=m

  def contact
    # if they searched for something
    @students = %w(samir micky rob yoshiki jocelyn moe veronica marc)

    # tomorrow w/ActiveRecord
    # @students = Student.all
    if params[:student].present?
      # @students = Student.where(name: params[:student])
      @students = @students.select do |student|
        student.start_with?(params[:student])
      end
    end
  end

  def home
  end
end

# https://kitt.lewagon.com/knowledge/tutorials?query=css

# https://www.google.com/search?oq=trouni+tiet
