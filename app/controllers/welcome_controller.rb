class WelcomeController < ApplicationController

  def index
    render text: "<h3>Hello.</h3>"
  end

  def show
    render text: "<h1>I SEE YOU, #{params["name"].upcase}.</h1>"
  end

  def lorem
    lorem_ipsum = params["name"]
    if lorem_ipsum == "batman"
      text = "The first time I stole so that I wouldn't starve, yes. I lost many assumptions about the simple nature of right and wrong. And when I traveled I learned the fear before a crime and the thrill of success. But I never became one of them.

      I seek the means to fight injustice. To turn fear against those who prey on the fearful.

      Behind you, stands a symbol of oppression. Blackgate Prison, where a thousand men have languished under the name of this man: Harvey Dent.

      Carbon fiber, .28 caliber, made in China. If you wanna kill a public servant, Mr Maroni... I recommend you buy American.

      Breathe in your fears. Face them. To conquer fear, you must become fear. You must bask in the fear of other men. And men fear most what they cannot see. You have to become a terrible thought. A wraith. You have to become an idea! Feel terror cloud your senses. Feel its power to distort. To control. And know that this power can be yours. Embrace your worst fear. Become one with the darkness.

      Yes. The fire rises."

    elsif lorem_ipsum == "office"
      text = "Sacred cow helicopter view, nor if you want to motivate these clowns, try less carrot and more stick, anti-pattern and we need more paper. Move the needle run it up the flagpole, and are there any leftovers in the kitchen? and personal development, pushback it just needs more cowbell. Can I just chime in on that one strategic fit, nor you better eat a reality sandwich before you walk back in that boardroom, nor level the playing field. Q1 we just need to put these last issues to bed execute , or bleeding edge, yet UI, but wheelhouse. Moving the goalposts touch base, and nail jelly to the hothouse wall. Strategic high-level 30,000 ft view get six alpha pups in here for a focus group, gain traction, so tbrand terrorists, and we need to button up our approach yet we need a paradigm shift. Dog and pony show not enough bandwidth. Paddle on both sides take five, punch the tree, and come back in here with a clear head, and show pony mobile friendly bleeding edge."
    else
      text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent bibendum sapien ipsum, id rutrum metus commodo vel. Sed ultrices, nibh a pulvinar malesuada, nunc nibh dapibus felis, vitae malesuada arcu erat eu neque. Phasellus ut viverra eros, at laoreet velit. Ut placerat nisl sed quam condimentum, vel porta dolor mattis. Donec a faucibus nisl. Morbi lobortis turpis et auctor bibendum. Curabitur vulputate turpis in lacus pretium tincidunt. Maecenas sagittis pellentesque tellus vel hendrerit.

      Aliquam nec euismod velit. Vestibulum porttitor, diam ac auctor laoreet, felis ligula hendrerit sem, a commodo leo odio sit amet nulla. Aenean sed faucibus nulla. Proin commodo tristique semper. Morbi vitae mattis massa. Vivamus ac risus ut odio ornare auctor non vel nulla. Donec et sollicitudin dui. Interdum et malesuada fames ac ante ipsum primis in faucibus. Vivamus viverra, ante sed condimentum molestie, purus tellus pretium lacus, quis condimentum sem est sed nisl. Donec in urna efficitur, efficitur urna non, dignissim magna. Mauris tristique metus eu gravida dictum. Ut porta tincidunt mi, non suscipit urna auctor eget. Donec justo augue, aliquam id urna vel, imperdiet ornare ante. Donec ac viverra ligula, sed iaculis augue. Pellentesque semper eleifend arcu, vel condimentum nisl convallis sed."
    end

    render text: "<h5>#{text}</h5>"
  end

end


  # get "/lorem/:ipsum" do
  #   "#{params["#{ipsum}"]}"
  # end

# With three actions (all just rendering text):
# Index: GET "/", returns a welcome message
# Show: GET "/billy", returns a specialized welcome message for whatever name is passed to it as a param
# Lorem: GET "/lorem/standard", returns lorem ipsum of the type requested
