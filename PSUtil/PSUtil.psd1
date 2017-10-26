﻿
@{
	
	# Script module or binary module file associated with this manifest
	ModuleToProcess = 'PSUtil.psm1'
	
	# Version number of this module.
	ModuleVersion = '1.0.0.2'
	
	# ID used to uniquely identify this module
	GUID = '9ef51588-c40c-4064-910d-9b624b758cf6'
	
	# Author of this module
	Author = 'Friedrich Weinmann'
	
	# Company or vendor of this module
	CompanyName = 'Infernal Associates ltd.'
	
	# Copyright statement for this module
	Copyright = '(c) 2017. All rights reserved.'
	
	# Description of the functionality provided by this module
	Description = 'A module designed to make the daily PowerShell madness easier to bear.'
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion = '3.0'
	
	# Name of the Windows PowerShell host required by this module
	PowerShellHostName = ''
	
	# Minimum version of the Windows PowerShell host required by this module
	PowerShellHostVersion = ''
	
	# Minimum version of the .NET Framework required by this module
	DotNetFrameworkVersion = '4.0'
	
	# Minimum version of the common language runtime (CLR) required by this module
	CLRVersion = '4.0.30319'
	
	# Processor architecture (None, X86, Amd64, IA64) required by this module
	ProcessorArchitecture = 'None'
	
	# Modules that must be imported into the global environment prior to importing
	# this module
	RequiredModules = @('PSFramework')
	
	# Assemblies that must be loaded prior to importing this module
	RequiredAssemblies = @('bin\PSUtil.dll')
	
	# Script files (.ps1) that are run in the caller's environment prior to
	# importing this module
	ScriptsToProcess = @()
	
	# Type files (.ps1xml) to be loaded when importing this module
	TypesToProcess = @()
	
	# Format files (.ps1xml) to be loaded when importing this module
	FormatsToProcess = @()
	
	# Modules to import as nested modules of the module specified in
	# ModuleToProcess
	NestedModules = @()
	
	# Functions to export from this module
	FunctionsToExport = @(
		'Expand-PSUObject',
		'Invoke-PSUDesktop',
		'Invoke-PSUExplorer',
		'Invoke-PSUTemp',
		'Select-PSUObjectSample',
		'Set-PSUObjectType'
	)
	
	# Cmdlets to export from this module
	CmdletsToExport = '' 
	
	# Variables to export from this module
	VariablesToExport = ''
	
	# Aliases to export from this module
	AliasesToExport = @(
		'a',
		'c',
		'cast',
		'desktop',
		'ec',
		'ex',
		'exp',
		'explorer',
		'grep',
		'ic',
		'ix',
		'm',
		'ocb',
		's',
		'temp',
		'v'
	)
	
	# List of all modules packaged with this module
	ModuleList = @()
	
	# List of all files packaged with this module
	FileList = @()
	
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData = @{
		
		#Support for PowerShellGet galleries.
		PSData = @{
			
			# Tags applied to this module. These help with module discovery in online galleries.
			# Tags = @()
			
			# A URL to the license for this module.
			# LicenseUri = ''
			
			# A URL to the main website for this project.
			# ProjectUri = ''
			
			# A URL to an icon representing this module.
			# IconUri = ''
			
			# ReleaseNotes of this module
			# ReleaseNotes = ''
			
		} # End of PSData hashtable
		
	} # End of PrivateData hashtable
}