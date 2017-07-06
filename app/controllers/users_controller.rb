class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @units = Unit.where(user_id: params[:id], complete: false).order(:date_end)
  end

    CBR = 'https://www.cbr.ru/analytics/?PrtId=insideinfo'
    CRASH = 'Сообщение об отзыве лицензии на осуществление банковских операций'
  def index

    decline = Nokogiri::HTML(open(CBR)).css('ul.without_dash:nth-child(7) > li')
    date = decline.map{|x| x.css('span.smallest').inner_text}.map{|x| Date.parse(x)}
    url = decline.map{|x| x.css('a')[0]}.map{|x| "https://www.cbr.ru#{x['href']}"}
    head = decline.map{|x| x.css('a')[0]}.map{|x| x.inner_text}
    arr = date.zip(url, head) keep_if{ |x| x[0] == Date.today}
    @u = arr.map{|x| Nokogiri::HTML(open("#{x[1]}")).css('#content').inner_text}

    
  def update
  end
end
