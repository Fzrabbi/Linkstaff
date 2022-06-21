Use the database social_network.sql

Api Docs

1.http://localhost/social-network/public/api/auth/register
method: POST
    first_name:hi
    last_name:hi
    email:hih@gg.com
    password:1234
    
2.http://localhost/social-network/public/api/auth/login
method: POST
    email:hih@gg.com
    password:1234
    
3.http://localhost/social-network/public/api/page/create
method: POST
Authorization: Bearer 7|yDwVhrrSOVUn8UuQIZFxILEcf8COqKeFl61lMWcD
    name:first Page
    creators_id:1
    
4.http://localhost/social-network/public/api/follow/person/2
method: POST
Authorization: Bearer 7|yDwVhrrSOVUn8UuQIZFxILEcf8COqKeFl61lMWcD
    name:first Page
    creators_id:1
    
5.http://localhost/social-network/public/api/follow/page/13 
method: POST
Authorization: Bearer 7|yDwVhrrSOVUn8UuQIZFxILEcf8COqKeFl61lMWcD
   name:first Page
   creators_id:1
   
6.http://localhost/social-network/public/api/person/attach-post
method: POST
Authorization: Bearer 7|yDwVhrrSOVUn8UuQIZFxILEcf8COqKeFl61lMWcD
   post_content:rtrt34565 45 345df sdf ds
   
7.http://localhost/social-network/public/api/page/1/attach-post
method: POST
Authorization: Bearer 7|yDwVhrrSOVUn8UuQIZFxILEcf8COqKeFl61lMWcD
    post_content:Asf sdjsdhl ad haslhd kjasdj kjas gdjaskj dgas
    
8.http://localhost/social-network/public/api/person/feed  
method: POST
Authorization: Bearer 7|yDwVhrrSOVUn8UuQIZFxILEcf8COqKeFl61lMWcD
    page:3
    page_size:3
