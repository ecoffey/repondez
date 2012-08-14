module ApplicationHelper
  def active_nav? section
    puts "#{section} == #{@active_nav} : #{section == @active_nav}"
    raw('class="active"') if section == @active_nav
  end
end
