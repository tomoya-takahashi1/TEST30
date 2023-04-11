class Reservation < ApplicationRecord
    validates :checkin,presence: true

    validates :checkout,presence: true

    

    belongs_to :room
    belongs_to :user

    
    validates :numberpeople, presence: true, numericality: { greater_than_or_equal_to: 0 }


      
      def days
       (checkout - checkin).to_i
      end
      
      def cost
        (room.price * days * numberpeople)
      end
      
   

  end
   
  