https://www.youtube.com/watch?v=5Q3zmaKSORw

1. The measuring stick and clipboard aren’t attaching properly to the left wrist.

    The clipboard should be flipped around and the measuring stick should snap to the spot just to the left of the clipboard.


2. The house model is snapping to the pedestal from very far away.

    The house model should snap to the pedestal when you place it on top of the pedestal.


3. You can currently snap the ruler and clipboard to the pedestal and the house model the left wrist.

    You should only be able to put the house model on the pedestal, while the clipboard and measuring stick should only be able to snap to the wrist. 


4. The dining table is too tall.

    The table should be exactly 0.74 meters (or 29 inches) high.


5. The teleportation anchor next to the pedestal puts the player upside-down and facing away from the pedestal.

    Teleporting here should orient the player upright and towards the pedestal.


6. The ray on your right hand uses all the default settings.

    Change the shape of your ray to a smooth bezier curve to make teleporting easier, and edit the valid and invalid colors to fade from transparent to opaque.


7. The scene should have some ambient sound.

    Add an ambient wind sound in the background and randomized bird sounds that seem to be coming from different locations around the house. 


Main task hints:

1. Look at the position and rotation of the Attach Transforms for your left hand sockets.

2. Look at the size of the Sphere Collider on the pedestal socket.

3. Look at the Interaction Layer Masks of the sockets and grabbable objects.

4. Try creating a measuring stick that is exactly the right height and putting it next to the table.

5. Look at the local orientation of the anchor as well as the “Match Orientation” setting in its Teleportation Anchor component.


Bonus task hints:

6. Look in the XR Ray Interactor component to edit the line’s shape and the XR Interactor Line Visual component to edit its colors.

7. Make sure your audio source is set to the 3D “Spatial Blend,” then, if you want, use the OnTimedInterval and PlaySoundsFromList components to randomize the bird sounds.
