
require_relative 'lib/event'
require_relative 'lib/user'

# Créer des utilisateurs
user1 = User.new("julie@email.com", 32)
user2 = User.new("john@email.com", 25)

# Créer un événement
event = Event.new("2024-07-7 09:00", 60, "Réunion importante", [user1.email, user2.email])

# Afficher les détails de l'événement
puts "Détails de l'événement :"
puts event.to_s

# Vérifier l'état de l'événement
if event.is_past?
  puts "Cet événement est déjà passé."
elsif event.is_soon?
  puts "Cet événement va commencer dans moins de 30 minutes."
else
  puts "Cet événement est à venir."
end

# Afficher tous les utilisateurs
puts "Liste des utilisateurs :"
puts User.all.inspect
