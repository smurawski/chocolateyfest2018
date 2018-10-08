Configuration InstallChoco
{
    Import-DscResource -Module cChoco
    Node $AllNodes.NodeName
    {
        cChocoInstaller InstallChoco
        {
            InstallDir = "c:\choco"
        }
        cChocoPackageInstaller InstallGit
        {
            Name                 = 'git'
            Ensure               = 'Present'
            DependsOn            = '[cChocoInstaller]installChoco'
        }
    }
}
