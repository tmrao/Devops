# service account 

resource "google_service_account" "IAM_Service_account" {
  account_id = "groovy-visitor-432523-m5"
  description = "This is for IAM serice account"
}

resource "google_service_account_key" "mykey" {
  service_account_id = google_service_account.IAM_Service_account
}

#ephemeral "google_service_account_key" "mykey" {
 # name            = google_service_account_key.mykey
  #public_key_type = "TYPE_X509_PEM_FILE"
#}
//