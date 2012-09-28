# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Area.create(name: '외국어')
Area.create(name: '수리')
Area.create(name: '언어')

Exam.create(name: '2012 수능 영어', source: '피아이 어학원')
Exam.create(name: '2011 수능 영어', source: 'ILE 어학원')
Exam.create(name: '2010 수능 영어', source: '렉스킴 어학원')
Exam.create(name: '2009 수능 영어', source: '덕스 어학원')

Exam.create(name: '2012 수능 수리', source: '종로학원')
Exam.create(name: '2011 수능 수리', source: '대성학원')

Exam.create(name: '2012 수능 언어', source: '종로학원')
Exam.create(name: '2011 수능 언어', source: '대성학원')

a = Area.find(1)
e = Exam.find(1)
a.exams << e
a.save
e.save

e = Exam.find(2)
a.exams << e
a.save
e.save

e = Exam.find(3)
a.exams << e
a.save
e.save

e = Exam.find(4)
a.exams << e
a.save
e.save

a = Area.find(2)
e = Exam.find(5)
a.exams << e
a.save
e.save

e = Exam.find(6)
a.exams << e
a.save
e.save

a = Area.find(3)
e = Exam.find(7)
a.exams << e
a.save
e.save

e = Exam.find(8)
a.exams << e
a.save
e.save
