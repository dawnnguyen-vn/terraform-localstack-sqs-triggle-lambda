output "sqs_url" {
  value = "${aws_sqs_queue.example_queue.id}"
}
