 <#
          .SYNOPSIS
          Gets AZDO Agent IP and returns as AZDO variable (agentIP)

          .DESCRIPTION
          Gets AZDO Agent IP and returns as AZDO variable (agentIP)

          .NOTES
          Author: Todd Pluciennik

          .EXAMPLE
          .\get-azdo-agent-ip-as-pipeline-variable.ps1

          .LINK
          https://ridicurious.com/2018/11/14/4-ways-to-validate-ipaddress-in-powershell/
          #>

          # use latest TLS
          [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
          # a list of API endpoints that return IP address
          $ipCheckURLs=@('https://api.ipify.org?format=json','https://ipinfo.io/json','https://api.myip.com/','https://ip.seeip.org/jsonip?')
          $IP=$null

          foreach ($ipCheckURL in $ipCheckURLs) {
              $count = 0
              Write-Output "Checking following URL for IP address: $ipCheckURL"
              while ($count -lt 3) {
                  #knock 3 times per URL
                  $RestError = $null
                  try {
                      $IP=Invoke-RestMethod $ipCheckURL | Select -exp ip
                      # validate IP
                      # thanks: https://ridicurious.com/2018/11/14/4-ways-to-validate-ipaddress-in-powershell/
                      if ($IP -as [IPAddress] -as [Bool]) { $count=3;}
                  } catch { # don't really care about the error
                      $RestError = $_
                      Write-Output "Error on attempt ($count): $RestError"
                  }
               sleep 5
               $count++
              }
              if ($IP -as [IPAddress] -as [Bool]) { break}
          }
          # final check
          if (!($IP -as [IPAddress] -as [Bool])) {
              Write-Output "!!! Cannot determine IP address"
              throw
          } else {
              Write-Output "$IP"
              Write-Host "##vso[task.setvariable variable=agentIP]$IP"
          }
