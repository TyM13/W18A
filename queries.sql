insert into blogger (username, password, name, created_at, email)
values ('user_one', 'pass', 'name_one', '2020-01-02', 'fake@hotmail.ca'),
('user_two', 'pass_two', 'name_two', '2010-01-02', 'fake_two@hotmail.ca');


insert into blogger_post (blogger_id, content, title, created_at)
values (1, 'content_one', 'title_one', '2022-01-01'),
(2, 'content_two', 'title_two', '2022-01-02');

insert into blog_post_comment (blogger_id, blog_post_id, content, created_at)
values (1, 1, 'comment_one', '2021-01-01'),
(2, 2, 'comment_two', '2021-01-02');

select username, password, name, created_at, email from blogger b 
where created_at > '2020-01-01';

update blogger set password='bad_password' where password='pass'

select blogger_post.content, blogger_post.title, blogger.username
from blogger inner join blogger_post on blogger_post.id = blogger.id;

select blog_post_comment.content, blogger_post.title, blogger.username
from blogger inner join blog_post_comment on blog_post_comment.id = blogger.id
inner join blogger_post on blog_post_comment.id = blogger_post.id;