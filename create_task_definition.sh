aws ecs register-task-definition \
  --family ecs-example \
  --network-mode awsvpc \
  --requires-compatibilities FARGATE \
  --cpu "256" \
  --memory "512" \
  --task-role-arn "arn:aws:iam::365876816979:role/ecs-role" \
  --execution-role-arn "arn:aws:iam::365876816979:role/ecs-role" \
  --container-definitions '[
    {
      "name": "ecs-example",
      "image": "365876816979.dkr.ecr.us-east-1.amazonaws.com/ecs-example:latest",
      "cpu": 0,
      "portMappings": [
        {
          "name": "3000",
          "containerPort": 3000,
          "hostPort": 3000,
          "protocol": "tcp",
          "appProtocol": "http"
        }
      ],
      "essential": true,
      "environment": [],
      "mountPoints": [],
      "volumesFrom": [],
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/ecs-example",
          "mode": "non-blocking",
          "awslogs-create-group": "true",
          "max-buffer-size": "25m",
          "awslogs-region": "us-east-1",
          "awslogs-stream-prefix": "ecs"
        }
      },
      "systemControls": []
    }
  ]' \
  --volumes '[]' \
  --placement-constraints '[]'