﻿function Set-PSUPathAlias {
    <#
	.SYNOPSIS
		Used to create an an alias that sets your location to the path you specify.

	.DESCRIPTION
		A detailed description of the Set-PSUPathAlias function.

	.PARAMETER Alias
		Name of the Alias that will be created for Set-PSUPath.
		Set-PSU Path detects the alias that called it and then find the corresponding PSFConfig entry for it.

	.PARAMETER Path
		This is the path that you want your location to change to when the alias is called.

	.PARAMETER Register
        Registers the configuration setting to the UserDefault scope. This allows you to set aliases quickly.
        For more advanced options, see Register-PSFConfig.

	.EXAMPLE
        PS C:\> Set-PSUPathAlias -Alias 'work' -Path 'C:\work'
        Creates an alias to Set-PSUPath that will set the location to 'c:\work'

    .EXAMPLE
        PS C:\> Set-PSUPathAlias -Alias 'repos' -Path 'C:\repos' -Register
        Creates an alias for repos and registers the setting so that it will persist.
#>
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute("PSUseShouldProcessForStateChangingFunctions", "")]
    [CmdletBinding()]
    param
    (
        [Parameter(Position = 0, Mandatory)]
        [string]
        $Alias,

        [Parameter(Position = 1, Mandatory)]
        [string]
        $Path,

        [switch]
        $Register
    )

    try {
        Set-PSFConfig -FullName psutil.pathalias.$Alias -Value $Path -Description 'Sets an alias for Set-PSUPath that takes you to the path specified in the value.'
    }
    catch {
        Stop-PSFFunction -Message 'Error encountered. Alias not set.' -Category InvalidOperation -Tag fail -Exception $_
        return
    }

    if ($Register) {
        Get-PSFConfig -FullName psutil.pathalias.$Alias | Register-PSFConfig
    }

    try {
        Import-PSUAlias -Name $Alias -Command Set-PSUPath
    }
    catch {
        Stop-PSFFunction -Message 'Error encountered. Alias not set.' -Category InvalidOperation -Tag fail -Exception $_
        return
    }
}