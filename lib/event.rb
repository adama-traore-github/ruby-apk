require 'time'
# require 'pry'

class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)  # Convertit la chaîne en objet Time
    @duration = duration  # Durée de l'événement en minutes
    @title = title
    @attendees = attendees

    # binding.pry  # Ajout de binding.pry pour interagir avec le code
  end

  def end_date
    @start_date + (@duration * 60)  # Calcule la date de fin de l'événement
  end

  def is_past?
    Time.now > end_date  # Vérifie si l'événement est passé
  end

  def is_soon?
    Time.now > (@start_date - 30 * 60) && Time.now < @start_date  # Vérifie si l'événement est proche
  end

  def to_s
    "Titre: #{@title}, Date de début: #{@start_date}, Durée: #{@duration} minutes, Invités: #{@attendees.join(', ')}"
  end
end

# Exemple d'utilisation
event = Event.new("2024-07-09 09:00", 60, "Réunion importante", ["truc@machin.com", "bidule@chose.fr"])

puts "Détails de l'événement :"
puts event.to_s

if event.is_past?
  puts "Cet événement est déjà passé."
elsif event.is_soon?
  puts "Cet événement va commencer dans moins de 30 minutes."
else
  puts "Cet événement est à venir."
end
