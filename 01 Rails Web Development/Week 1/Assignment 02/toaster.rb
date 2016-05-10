# A toaster as a function

def toast_it (item, temp_setting, electricity, time)
   # check if the electric chord is plugged in
   if (electricity == true)
     if (item != "fork")
        # receive the bread with gladness
        item_to_toast = item
        # accept the user defined temperature setting
        oven_temp = temp_setting
        # accept the user defined toast time
        toast_duration = time
        # toast the bad boy to perfection with an untested rudimentary toast forumla
        toasted_product = item_to_toast * oven_temp * toast_duration
        p "DING!"
        p "Your #{item_to_toast} has been toasted at #{oven_temp} degrees for #{toast_duration} seconds."
        p "Please remove your #{item_to_toast} from the toaster, lather it up, and enjoy!"
    else
        p "Don't. Just stop it, and never touch me again"
    end
   else
      # do nothing, except scold the toastee for not
      # plugging in an electric device before using it
      # This toaster has minimal battery power, so when it's not plugged in,
      # it can lambast the chump who attempts to toast with no power
      p "Ummmm... please plug in your toaster"
      p "And solve this basic formula to toast anything again:"
      p "2+2 = ?"
      p "......"
      p "In case you were wondering, '?' isn't the answer"
      p "You provide the answer"
      p "Nevermind..."
    end
end

toast_it("bread", 400, true, 30)
