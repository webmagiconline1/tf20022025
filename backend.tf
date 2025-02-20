terraform {
    backend "gcs" {
        bucket  = "tf18022025"
        prefix  = "terraform/appserver"
    }
}