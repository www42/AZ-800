# How to change keyboard layout to German (de-de)

## GUI

![GUI](Keyboard-German-GUI.png)

## PowerShell

```powershell
Set-WinDefaultInputMethodOverride -InputTip '0407:00000407'
logoff
```

![PowerShell](Keyboard-German-PowerShell.png)