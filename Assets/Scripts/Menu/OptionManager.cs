using UnityEngine;
using UnityEngine.InputSystem;

public class OptionManager : MonoBehaviour
{
    public GameObject optionsMenu;
    
    // Update is called once per frame
    private void Update()
    {
        if (Keyboard.current != null && Keyboard.current.escapeKey.wasPressedThisFrame) {
            optionsMenu.SetActive(!optionsMenu.activeSelf);
        }
    }
}
