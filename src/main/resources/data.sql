INSERT INTO tb_user (name, email, password) VALUES ('Alex Brown', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria Green', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);


INSERT INTO tb_course (name,img_URI,img_Gray_Uri) VALUES ('Bootcamp html','https://www.smartpassiveincome.com/wp-content/uploads/2020/04/How-to-Create-an-Online-Course.png','https://www.guiadasemana.com.br/contentFiles/image/2018/03/FEA/thumbnail/56626_w380h235_1519941526luzes.jpg');

INSERT INTO tb_offer (edition,start_Moment,end_Moment,course_id) VALUES ('1.0',TIMESTAMP WITH TIME ZONE '2020-07-13T03:00:00Z',TIMESTAMP WITH TIME ZONE'2022-08-13T03:00:00Z',1);
INSERT INTO tb_offer (edition,start_Moment,end_Moment,course_id) VALUES ('2.0',TIMESTAMP WITH TIME ZONE '2020-09-13T03:00:00Z',TIMESTAMP WITH TIME ZONE'2022-10-13T03:00:00Z',1);

INSERT INTO tb_resource (title,description,position,img_Uri,type,offer_id) VALUES ('Trilha HTML','Trilha principal do curso',1,'https://www.smartpassiveincome.com/wp-content/uploads/2020/04/How-to-Create-an-Online-Course.png',1,1);
INSERT INTO tb_resource (title,description,position,img_Uri,type,offer_id) VALUES ('Forum','Tire suas dúvidas',2,'https://www.smartpassiveincome.com/wp-content/uploads/2020/04/How-to-Create-an-Online-Course.png',2,1);
INSERT INTO tb_resource (title,description,position,img_Uri,type,offer_id) VALUES ('Lives','Lives exclusivas para a turma',3,'https://www.smartpassiveincome.com/wp-content/uploads/2020/04/How-to-Create-an-Online-Course.png',1,1);

INSERT INTO tb_section (title,description,position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 1','Neste capítulo vamos começar',1,'https://www.smartpassiveincome.com/wp-content/uploads/2020/04/How-to-Create-an-Online-Course.png',1,null);
INSERT INTO tb_section (title,description,position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 2','Neste capítulo vamos continuar',2,'https://www.smartpassiveincome.com/wp-content/uploads/2020/04/How-to-Create-an-Online-Course.png',1,1);
INSERT INTO tb_section (title,description,position,img_Uri,resource_id,prerequisite_id) VALUES ('Capitulo 3','Neste capítulo vamos finalizar',3,'https://www.smartpassiveincome.com/wp-content/uploads/2020/04/How-to-Create-an-Online-Course.png',1,2);

INSERT INTO tb_enrollment (user_id,offer_id,enroll_Moment,refund_Moment,available,only_Update) VALUES (1,1,TIMESTAMP WITH TIME ZONE'2022-10-13T013:00:00Z',null,true,false);
