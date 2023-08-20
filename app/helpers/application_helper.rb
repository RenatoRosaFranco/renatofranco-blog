# frozen_string_literal: true

module ApplicationHelper
  def default_avatar
    'https://as2.ftcdn.net/v2/jpg/03/31/69/91/1000_F_331699188_lRpvqxO5QRtwOM05gR50ImaaJgBx68vi.jpg'
  end

  def to_date(field)
    field.strftime('%d/%m/%Y')
  end

  def reading_time(content, words_per_minute = 200)
    words = content.split.size
    minutes = (words / words_per_minute).ceil

    (minutes > 1) ? "#{minutes} minutes" : '1 minute'
  end
end
