using namespace System.Net

# Input bindings are passed in via param block.
#
param($Request, $TriggerMetadata)


#Github URL

$githubUrl = "https://github.com/lake28/25DaysOfServerless/blob/master/"

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Interact with query parameters or the body of the request.
# Got site to test webhooks -- https://webhook.site/
$imagesAdded = $Request.Body.commits.added | Where-Object { $_ -Like "*.png" }

Write-Output " Added images: $imagesAdded"

### create a url for image ?

$url = $githubUrl + $imagesAdded

#### save  data to a database, table, queue?

Push-OutputBinding -Name ImageQueue -Value $URL

# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
        StatusCode = [HttpStatusCode]::OK
        Body       = "Thanks!"
    })
