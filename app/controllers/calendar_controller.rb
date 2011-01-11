class CalendarController < ApplicationController
  
  def index
    @first_day_of_week = 1
    @month = (params[:month] || (Time.zone || Time).now.month).to_i
    @year = (params[:year] || (Time.zone || Time).now.year).to_i

    @shown_month = Date.civil(@year, @month)

    @event_strips = Event.event_strips_for_month(@shown_month)
  end
  
  # def show_event
  #     calendar event_calendar_opts do |event|
  #       link_to_remote(content_tag(:div, h(event.name)),
  #         :url =>  event_path(event),
  #         :title => "#{h(event.name)}: #{event.start_at} to #{event.end_at}",
  #         :href => event_path(event)
  #       )
  #     end
  #   end
  #   
  private
  
end
