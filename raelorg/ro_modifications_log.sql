Select u.user_login, p.post_content, p.post_title, p.post_name, p.guid, p.post_type, p.* 
From wp_posts p 
Join wp_users u 
on u.ID = p.post_author
Where p.post_modified > '2020-07-28'
And p.post_type <> 'attachment'

