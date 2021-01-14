variable cs_id {
  type = string
}

variable vpc_id {
  type = string
}

variable env {
  type = string
}

variable listener_arn {
  type    = string
  default = ""
}

variable name {
  type = string
}


variable health_check {
  type        = map
  description = "Health checks for Target Group"
  default = {
    path                = "/"
    healthy_threshold   = "5"
    unhealthy_threshold = "2"
    interval            = "30"
    timeout             = "5"
    protocol            = "HTTP"
  }
}
variable https_listener_rules {
  description = "A list of maps describing the Listener Rules for this ALB. Required key/values: actions, conditions. Optional key/values: priority, https_listener_index (default to https_listeners[count.index])"
  type        = any
  default     = []
}

variable task_def {
  type = list(any)
}

variable priority {
  type    = number
  default = 1
}


variable is_default_tg {
  type    = bool
  default = false
}

variable mapping_port {
  type    = number
  default = 0
}

variable service_registries {
  description = "service discovery"
  type        = map(string)
  default     = {}
}

variable "deregistration_delay" {
  type        = number
  description = "ALB deregister delay time"
  default     = 30
}

variable "is_log"{
  type =bool
  description ="container auto log"
  default = false
}
variable "desired_count" {
  type = number
  description = "task number"
  default = 1
}