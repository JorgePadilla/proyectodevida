class Usuario < ActiveRecord::Base
  belongs_to :rol
  has_many :cuota

  attr_accessible :nombre, :password, :password_confirmation, :rol_id
  
  attr_accessor :password
  before_save :encrypt_password
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :nombre
  validates_uniqueness_of :nombre
  
  def self.authenticate(nombre, password)
    usuario = find_by_nombre(nombre)
    if usuario && usuario.password_hash == BCrypt::Engine.hash_secret(password, usuario.password_salt)
      usuario
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
