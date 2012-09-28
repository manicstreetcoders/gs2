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

Question.create(exam_id: 1, group_number: 1, number: 1,
xml: 
"<QuestionGroup>
<Question><![CDATA[<p>다음 글의 빈칸 (A), (B)에 들어갈 말로 가장 적절한 것은? [1점]</p>]]>
</Question>
<Message>
<![CDATA[
  <p>The term <i>euphemism</i> derives from a Greek word meaning 'to speak with good words' and involves substituting a more pleasant, less objectionable way of saying something for a blunt or more direct way. Why do people use euphemisms? They do so probably to help smooth out the 'rough edges' of life, to make he unbearable bearable and the offensive inoffensive. ____(A)____, euphemisms can become dangerous when they are used to create misperceptions of important issues. ____(B)____, a politician may indicate that one of his statement was 'somewhat at variance with the truth,' meaning that he lied. Even more serious examples include describing rotting slums as 'substandard housing,' making the miserable conditions appear reasonable and the need for action less important.</p>]]>
</Message>
<Selection ID=\"1\">(A) However ..... (B) For example</Selection>
<Selection ID=\"2\">(A) In short ..... (B) For example</Selection>
<Selection ID=\"3\">(A) That is ..... (B) Similarly</Selection>
<Selection ID=\"4\">(A) In addition ..... (B) Therefore</Selection>
<Selection ID=\"5\">(A) Nevertheless ..... (B) Similarly</Selection>
<Answer>4</Answer>
</QuestionGroup>")

Question.create(exam_id: 1, group_number: 2, number: 2,
xml:
"<QuestionGroup>
<Question><![CDATA[<p>다음 글에 드러난 'I'의 심경으로 가장 적절한 것은? [1점]</p>]]>
</Question>
<Message>
<![CDATA[
<p>It started out like any other day. I had no idea that I was in for one of the most terrifying experiences of my life. I headed to the beach and jumped on my surfboard and paddled out. I was about 150 yards off the beach, when I felt a sudden chill in the air followed by an uncomfortable stillness. Suddenly, I heard the lifeguard scream, 'Get out of the water!' There was a certain panic in his voice that demanded attention. Then I saw something approaching me in the water. It was big and gray, and closing in on me fast. I tried to paddle back to shore but my arms and legs were paralyzed.</p>]]>
</Message>
<Selection ID=\"1\">amused</Selection>
<Selection ID=\"2\">ashamed</Selection>
<Selection ID=\"3\">disappointed</Selection>
<Selection ID=\"4\">flattered</Selection>
<Selection ID=\"5\">frightened</Selection>
<Answer>4</Answer>
</QuestionGroup>")

Question.create(exam_id: 1, group_number: 3, number: 3,
xml:
"<QuestionGroup>
<Question><![CDATA[<p>Giorgio Vasari에 관한 다음 글의 내용과 일치하지 않는 것은?</p>]]>
</Question>
<Message>
<![CDATA[<p>Giorgio Vasari, the Italian painter, architect, and writer, was born in Arezzo in 1511. He was considered to be more successful as an architect than a painter. But what made him truly famous was his book <i>Lives of the Most Eminent Painters, Sculptors and Architects</i> (shortened as <i>Lives</i>). It is not known exactly how many copies of the first edition of <i>Lives</i>, published in 1550, were printed, but it earned Vasari the praise of his peers. Then in a revised edition of <i>Lives</i> in 1568, complete with portraits of the artists, he combined biographical anecdotes with critical comment. Although the revised edition overshadowed Vasari's own achievements as a painter and architect, it made him the most respected man of the Italian art world. He was even knighted by Pope Pius V in 1571</p>]]>
</Message>
<Selection ID=\"1\"><![CDATA[Arezzo 에서 태어난 이탈리아 화가, 건축가 겸 작가였다.]]></Selection>
<Selection ID=\"2\"><![CDATA[<i>Lives</i>의 초판본으로 동료들로부터 칭송을 받았다.]]></Selection>
<Selection ID=\"3\"><![CDATA[<i>Lives</i>의 개정판에 예술가들의 전기적 일화와 비평을 함께 실었다.]]></Selection>
<Selection ID=\"4\"><![CDATA[<i>Lives</i>의 개정판으로 이탈리아 예술계에서 존경을 받지 못하게 되었다.]]></Selection>
<Selection ID=\"5\"><![CDATA[1571년에 교황으로부터 기사 작위를 받았다.]]></Selection>
<Answer>4</Answer>
</QuestionGroup>")
