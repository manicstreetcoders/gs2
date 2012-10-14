#!/bin/sh

curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '{"exam_id":1,"question_id":1,"user_selection":1 }'  http://localhost:3000/results

