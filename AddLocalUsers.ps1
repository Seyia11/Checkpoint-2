#AddLocalUsers.ps1
Write-Host "--- Début du script ---"
#password aléatoire à 12 caractères
Function Random-Password ($length = 12) {
    $punc = 46..46
    $digits = 48..57
    $letters = 65..90 + 97..122

    $password = get-random -count $length -input ($punc + $digits + $letters) |`
        ForEach -begin { $aa = $null } -process { $aa += [char]$_ } -end { $aa }
    Return $password.ToString()
}

Function ManageAccentsAndCapitalLetters {
    param ([String]$String)
    
    $StringWithoutAccent = $String -replace '[éèêë]', 'e' -replace '[àâä]', 'a' -replace '[îï]', 'i' -replace '[ôö]', 'o' -replace '[ùûü]', 'u'
    $StringWithoutAccentAndCapitalLetters = $StringWithoutAccent.ToLower()
    $StringWithoutAccentAndCapitalLetters
}

$Path = "C:\Scripts"
$CsvFile = "$Path\Users.csv"
$LogFile = "$Path\Log.log"

$Users = Import-Csv -Path $CsvFile -Delimiter ";" -Header "prenom", "nom", "societe", "fonction", "service", "description", "mail", "mobile", "scriptPath", "telephoneNumber" -Encoding UTF8  | Select-Object -Skip 2

foreach ($User in $Users) {
    $Prenom = ManageAccentsAndCapitalLetters -String $User.prenom
    $Nom = ManageAccentsAndCapitalLetters -String $User.Nom
    #Q.2.12 variable Name
    $Name = "$Prenom.$Nom"
    If (-not(Get-LocalUser -Name "$Prenom.$Nom" -ErrorAction SilentlyContinue)) {
        $Pass = Random-Password
        $Password = (ConvertTo-secureString $Pass -AsPlainText -Force)
        $Description = "$($user.description) - $($User.fonction)"
        $UserInfo = @{
            Name                 = "$Prenom.$Nom"
            FullName             = "$Prenom.$Nom"
            Password             = $Password
            AccountNeverExpires  = $true
            #Q.2.13 Le mdp n'espire jamais
            PasswordNeverExpires = $true
        }

        New-LocalUser $User
        Add-LocalGroupMember -Group "Utilisateur" -Member "$Name"
        Write-Host "L'utilisateur $Name a été crée"
        #Q.2.8 Affichage du mdp de l'utilsateur
        Write-Host "Le compte $User a été crée avec le mot de passe $Password" -Foreground green

    }
    #Q.2.10 Affichage utilisateur existe déjà
    Else {
        Write-Host " Le compte $User existe déjà" -Foreground red

    }
}

pause
Write-Host "--- Fin du script ---"
#Q.2.15 
Start-Sleep 
