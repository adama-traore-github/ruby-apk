
class User
  attr_accessor :email, :age

  # Variable de classe pour stocker tous les utilisateurs
  @@all_users = []

  def initialize(email, age)
    # Variables d'instance
    @age = age
    @email = email

    # Ajouter chaque nouvel utilisateur à la variable de classe @@all_users
    @@all_users << self
  end

  # Méthode de classe pour récupérer tous les utilisateurs
  def self.all
    @@all_users
  end
end
