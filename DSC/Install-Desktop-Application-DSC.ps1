Configuration InstallDesktopApplication {
    param (
        [String]$placeholder = "C:\Temp"
    )

    Import-DscResource -ModuleName PsDesiredStateConfiguration

    Node 'localhost' {
        File EnsureStagingDirectoryExists {
            DestinationPath = $placeholder
            Ensure          = 'Present'
            Type            = 'Directory'
        }
    }
}

InstallDesktopApplication
