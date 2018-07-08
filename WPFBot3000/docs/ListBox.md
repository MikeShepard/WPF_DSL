---
external help file: WPFBot3000-help.xml
Module Name: WPFBot3000
online version:
schema: 2.0.0
---

# ListBox

## SYNOPSIS
A listbox control

## SYNTAX

```
ListBox [[-name] <String>] [[-contents] <Array>] [[-initialValue] <Object>] [[-property] <Hashtable>]
 [<CommonParameters>]
```

## DESCRIPTION
A listbox control

## EXAMPLES

### EXAMPLE 1
```
$files=get-childitem c:\windows -file | select-object -first 10
```

Dialog {
    Listbox Files -contents $files
}

## PARAMETERS

### -name
The name of the control

```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 1
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -contents
The contents of the listbox

```yaml
Type: Array
Parameter Sets: (All)
Aliases:

Required: False
Position: 2
Default value: @()
Accept pipeline input: False
Accept wildcard characters: False
```

### -initialValue
The item from $contents that is initally selected

```yaml
Type: Object
Parameter Sets: (All)
Aliases:

Required: False
Position: 3
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

### -property
Properties to extend/override the base properties defined in the function

```yaml
Type: Hashtable
Parameter Sets: (All)
Aliases:

Required: False
Position: 4
Default value: @{}
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable.
For more information, see about_CommonParameters (http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
General notes

## RELATED LINKS