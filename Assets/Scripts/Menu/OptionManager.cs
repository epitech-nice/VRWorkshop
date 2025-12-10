using UnityEngine;
using UnityEngine.InputSystem;
using UnityEngine.InputSystem.Controls;
using UnityEngine.InputSystem.XR;

public class OptionManager : MonoBehaviour
{
    public GameObject optionsMenu;
    
    // Update is called once per frame
    private void Update()
    {
        if (Keyboard.current != null && Keyboard.current.escapeKey.wasPressedThisFrame) {
            optionsMenu.SetActive(!optionsMenu.activeSelf);
        }
        
        // XR controller support leftHand menu button
        var leftHand = InputSystem.GetDevice<UnityEngine.InputSystem.XR.XRController>(CommonUsages.LeftHand);
        if (leftHand == null) return;
        var menuControl = leftHand.TryGetChildControl<ButtonControl>("menu");
        if (menuControl != null && menuControl.wasPressedThisFrame)
            optionsMenu.SetActive(!optionsMenu.activeSelf);
    }
}
