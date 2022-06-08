#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: role
#------------------------------------------------------------

CREATE TABLE role(
        id_role  Int  Auto_increment  NOT NULL ,
        nom_role Varchar (255) NOT NULL
	,CONSTRAINT role_PK PRIMARY KEY (id_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: users
#------------------------------------------------------------

CREATE TABLE users(
        id_users     Int  Auto_increment  NOT NULL ,
        nom_users    Varchar (255) NOT NULL ,
        prenom_users Varchar (255) NOT NULL ,
        email_users  Varchar (255) NOT NULL ,
        mdp_users    Varchar (255) NOT NULL ,
        confirm_mdp  Varchar (255) NOT NULL ,
        id_role      Int NOT NULL
	,CONSTRAINT users_PK PRIMARY KEY (id_users)

	,CONSTRAINT users_role_FK FOREIGN KEY (id_role) REFERENCES role(id_role)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: video
#------------------------------------------------------------

CREATE TABLE video(
        id_video          Int  Auto_increment  NOT NULL ,
        nom_video         Varchar (255) NOT NULL ,
        description_video Varchar (255) NOT NULL ,
        lien_video        Varchar (255) NOT NULL ,
        image_video       Varchar (255) NOT NULL
	,CONSTRAINT video_PK PRIMARY KEY (id_video)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: poster
#------------------------------------------------------------

CREATE TABLE poster(
        id_video Int NOT NULL ,
        id_users Int NOT NULL
	,CONSTRAINT poster_PK PRIMARY KEY (id_video,id_users)

	,CONSTRAINT poster_video_FK FOREIGN KEY (id_video) REFERENCES video(id_video)
	,CONSTRAINT poster_users0_FK FOREIGN KEY (id_users) REFERENCES users(id_users)
)ENGINE=InnoDB;

