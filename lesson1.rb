require 'date'
class Lesson1
  def sum(num, val = 0)
    num.to_s(val).split(//).inject(0) {|z, x| z + x.to_i(val)}
  end

  def age(birthday)
    today = DateTime.now
    bday = Date.parse(birthday)
    days_from = (today - bday).to_i
    seconds = (days_from*24*60*60).to_i
    minutes = seconds / 60
    hours = minutes / 60
    days = hours / 24
    years = days / 365
    puts "Я живу #{years} года или #{days} дней или #{hours} часов или #{minutes} минут или #{seconds} секунд"
  end

  def name(first_name)
    puts "Hello " + first_name + " Super Man!"
  end
end
