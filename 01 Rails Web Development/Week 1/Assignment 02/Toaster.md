# Toaster Function
##### Okay, this isn't a few sentences, but I couldn't, or didn't want to, resist this opportunity. The questions were leading

### The expected arguments for a argumentative toaster include:
1. Toasted item (string, like "bread", "pizza", etc)
2. Temperature setting (which is user defined, typically using a knob)
3. Electricity to operate (is the toaster plugged in?)
4. A time duration to toast (how long do we toast it?)

### What does the toaster function return?

A _ding_ noise.

But, since our toaster is fancy, and has an OLED touch screen,
it'll also return a string statement, to the tune of happy birthday, singing:
>Your _item_ has been toasted at _x_ temperature, for _y_ amount of time.

If the toaster is not plugged in, the function returns
>Ummm... Please plug in your toaster.

>_And other condescending things..._

Side effects? Like what happens if you over-toast, toast the wrong thing, or you set your temperature too high? In all cases, you go hungry. In some cases, you burn your food, and stink up your house. If that happens, call the open_your_window function.

If the item happens to be a fork, the toaster function will not care. It'll toast anything it's fed. The toaster function just toasts, it's the _eat_ functions job to check if the toasted item is edible before the sad human who toasts forks tries to eat it.

Here's the beginning's of a toaster function:

(_Please note, this function uses a rudimentary toast formula. For something more precise, dare I say, __perfect__, consult this [formula for the perfect piece of toast](http://wildaboutmath.com/2011/07/22/the-perfect-formula-for-toast/)_ )

```ruby
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
        # toast the bad boy to perfection with an untested rudimentary toast formula
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
      # it can lambaste the chump who attempts to toast with no power
      p "Ummmm... please plug in your toaster"
      p "And solve this basic formula to toast anything again:"
      p "2+2 = ?"
      p "......"
      p "In case you were wondering, '?' isn't the answer"
      p "You provide the answer"
      p "Never-mind..."
    end
end

toast_it("bread", 400, false, 30)


```
