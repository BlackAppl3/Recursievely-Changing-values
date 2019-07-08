class OwnersController < ApplicationController
    
    def index
        recursive_method(1)
        render plain: "Completed" 
    end

    def recursive_method(id)
        obj = Invitedbyguest.where(guestinvitation_id: id)
        if obj.nil? == false
            obj.each do |val|
                Invitedbyguest.find(val.id).update(status: "NOT OK")
                recursive_method(val.guest_id)
            end
        end
    end
end
