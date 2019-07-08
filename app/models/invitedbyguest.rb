class Invitedbyguest < ApplicationRecord
  belongs_to :guestinvitation
  belongs_to :guest
end
