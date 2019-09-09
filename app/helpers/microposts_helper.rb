module MicropostsHelper
    def micropost_author(micropost)
        user_signed_in? && current_user.id == micropost.user_id
      end  
end
