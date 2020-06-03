using namespace System.Net

# Input bindings are passed in via param block.
param($Request, $TriggerMetadata)


#Github URL

$githubUrl = "https://github.com/lake28/25DaysOfServerless/blob/master/day3/images/"

# Write to the Azure Functions log stream.
Write-Host "PowerShell HTTP trigger function processed a request."

# Interact with query parameters or the body of the request.
# Got site to test webhooks -- https://webhook.site/
$imagesAdded = $Request.Body.commits.added | Where-Object $_ -Like "*.png"

Write-Host " Added images: $imagesAdded"

### create a url for image ?

$url = "https://github.com/lake28/25DaysOfServerless/blob/master/day3/images/" + $imagesAdded





#### save  data to a database, table, queue?



# Associate values to output bindings by calling 'Push-OutputBinding'.
Push-OutputBinding -Name Response -Value ([HttpResponseContext]@{
    StatusCode = $status
    Body = $body
})
