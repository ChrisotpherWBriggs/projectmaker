class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :email, presence: true, uniqueness: { case_sensitive: false }, 
                                        length: { maximum: 105 },
                                        format: { with: VALID_EMAIL_REGEX }

  validates_inclusion_of :email, in: %w( chris@example.com djinnntawnik@hotmail.com john@example.com ronnie@example.com 
  										cbriggs@mcoa.com phoward@mcoa.com ksweeny@mcoa.com jdee@mcoa.com jmilioto@mcoa.com 
  										rwilliams@mcoa.com cdickson@mcoa.com cjeffries@mcoa.com skelley@mcoa.com dimmel@mcoa.com 
  										jgorman@mcoa.com" )

  def full_name
    return "#{first_name} #{last_name}".strip if (first_name || last_name)
    "Anonymous"
  end
  
end
