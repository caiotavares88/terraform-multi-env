resource "google_pubsub_topic" "topic" {
  name = var.topic_name

  labels = {
        environment        = "dev"		#(dev, staging, production)
        changed_by         = "terraform"				#Person or automation that last changed any configuration
        taskid             = "000000002"				#Zendesk ticket number
  } 
}

resource "google_storage_bucket" "private" {
    name = var.bucketname

    labels = {
        environment        = "dev"		#(dev, staging, production)
        changed_by         = "terraform"				#Person or automation that last changed any configuration
        taskid             = "000000001"				#Zendesk ticket number
  } 
}
/*
resource "google_storage_bucket" "private2" {
    name = var.bucketname_2

    labels = {
        environment        = "dev"		#(dev, staging, production)
        changed_by         = "terraform"				#Person or automation that last changed any configuration
        taskid             = "000000001"				#Zendesk ticket number
  } 
}
*/