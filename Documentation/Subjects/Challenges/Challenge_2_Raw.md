1. The Canvas that allows you to change the shape on the pedestal follows the camera.

    This Canvas GameObject should be stationary next to the pedestal.


2. The toggled ray and palette canvas are tracking the opposite hands.

    The palette should move with the left hand and, when you press the thumbstick or primary button on the right controller, the toggled ray should emit from the right hand.


3. The paintbrush activation is backwards, starting when the trigger is released and stopping when it’s pressed.

    The paintbrush should create a trail while the trigger is being held, stopping when the trigger is released.


4. The medium brush size button turns invisible when pressed and makes the trail gigantic.

    The button should turn the same grey color as the other buttons when pressed and change the trail to a size in between the small and large brush sizes.


5. The paint brush sound effect stays the same, regardless of how far it is from you.

    The paint brush sound should be at full volume close to your face, but about 50% volume when your arm is outstretched.

6. There is no audio feedback from the UI.

    Add a toggle UI to the menu next to the pedestal that shows/hides the pedestal GameObject when toggled on/off.


7. There is no way to hide the pedestal completely

    Add a toggle UI to the menu next to the pedestal that shows/hides the pedestal GameObject when toggled on/off.


8. There is no way to save your work. [Expert]

    Add a Print button that creates a miniature version of your 3D creation on a table next to you.


9. There is no way to paint on the back or sides of the GameObject. [Expert]

    Add a slider to the UI that rotates the entire pedestal, giving you the ability to paint the back as well.


Main task hints:

1. The canvas render mode needs to be in “World Space” - not “Screen Space”.

2. Look at the input mapping in the XR Controller components for the LeftHand and the RightRay.

3. Look at the functions in the Activated and Deactivated events in the paintbrush’s XR Grab Interactable component.

4. Make sure to check the alpha (transparency) value of the button tint. Look at the functions on the small and large brushes for references on the ideal trail width.

5. Make sure that 3D audio is enabled, and check the 3D audio rolloff curve to make sure it is down to 50% at around 1 meter from the source.

Bonus task hints:

6. Try using either the PlayQuickSound or the PlaySoundsFromList scripts.

7. Use the Toggle() function in the ToggleVisibility script.

8. No hints available. Use Google!

9. No hints available. Use Google!
