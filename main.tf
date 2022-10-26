resource "aws_sqs_queue" "test" {
    for_each = toset( ["queue-10", "queue-20"] )
    name = each.key
    delay_seconds = 90
    max_message_size = 2048
    message_retention_seconds = 86400
    receive_wait_time_seconds = 10
}