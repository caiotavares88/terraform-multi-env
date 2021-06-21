resource "google_pubsub_topic" "topic" {
  name = var.topic_name

  labels = {
        environment        = var.environment		#(dev, staging, production)
        changed_by         = "terraform"				#Person or automation that last changed any configuration
        taskid             = "000000001"				#Zendesk ticket number
  } 
}