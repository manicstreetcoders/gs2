#!/bin/sh

curl -H "Accept: application/json" -H "Content-type: application/json" -X POST -d '[{"exam_id":1,"user_id_str":"GILDONG001","question_id":1,"user_selection":1,"answer":1,"used_time":5.2 },{"exam_id":1,"user_id_str":"GILDONG001","question_id":2,"user_selection":2,"answer":2,"used_time":5.3 }]'  http://itempal.com/results

