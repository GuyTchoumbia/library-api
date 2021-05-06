create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
create sequence utilisateur_sequence start 240500 increment 1
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
create table document_tags (documents_id int4 not null, tags_id int4 not null)
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1

    create table auteur (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table cote (
       id  serial not null,
        libelle varchar(255),
        reserved boolean default false,
        document_id int4,
        library_id int4,
        primary key (id)
    )

    create table document (
       id  serial not null,
        date int4,
        isbn varchar(13),
        libelle varchar(255),
        editeur_id int4,
        support_id int4,
        primary key (id)
    )

    create table document_auteurs (
       documents_id int4 not null,
        auteurs_id int4 not null
    )

    create table document_tags (
       documents_id int4 not null,
        tags_id int4 not null
    )

    create table editeur (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table horaires (
       id  serial not null,
        dimanche varchar(255),
        jeudi varchar(255),
        lundi varchar(255),
        mardi varchar(255),
        mercredi varchar(255),
        samedi varchar(255),
        vendredi varchar(255),
        primary key (id)
    )

    create table horaires_libraries (
       horaires_id int4 not null,
        libraries_id int4 not null
    )

    create table library (
       id  serial not null,
        code_postal int4,
        numero varchar(255),
        rue varchar(255),
        ville varchar(255),
        libelle varchar(255) not null,
        message varchar(255),
        horaires_id int4,
        primary key (id)
    )

    create table support (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table tag (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table user_cote (
       id  serial not null,
        date_emprunt date,
        date_reservation date,
        date_retour date,
        prolongation boolean default false,
        cote_id int4,
        user_id int4,
        primary key (id)
    )

    create table utilisateur (
       id int4 not null,
        authority varchar(255),
        date_naissance date,
        nom varchar(255),
        prenom varchar(255),
        code_postal int4,
        numero varchar(255),
        rue varchar(255),
        ville varchar(255),
        email varchar(255),
        phone varchar(255),
        password varchar(255),
        primary key (id)
    )

    alter table if exists horaires_libraries 
       add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)

    alter table if exists cote 
       add constraint FK78mreukprvmciseetap89ij2c 
       foreign key (document_id) 
       references document

    alter table if exists cote 
       add constraint FKstdro06dk6udp9i6iy1ljxx1c 
       foreign key (library_id) 
       references library

    alter table if exists document 
       add constraint FK95vni3agi9eyrag5a904au8wi 
       foreign key (editeur_id) 
       references editeur

    alter table if exists document 
       add constraint FKelnvl2u75ncxrtm29l6hl8xsm 
       foreign key (support_id) 
       references support

    alter table if exists document_auteurs 
       add constraint FK37cb7h13hx1k1kuw5vug7e94j 
       foreign key (auteurs_id) 
       references auteur

    alter table if exists document_auteurs 
       add constraint FKofjqrswxiutxv9h77ew4cgoby 
       foreign key (documents_id) 
       references document

    alter table if exists document_tags 
       add constraint FKdtj1985f11raye0lxeappmw1c 
       foreign key (tags_id) 
       references tag

    alter table if exists document_tags 
       add constraint FK3rgoymvryufm1sf9dc4bsvyt6 
       foreign key (documents_id) 
       references document

    alter table if exists horaires_libraries 
       add constraint FKloqqd373fy6ouvumhdqjsffix 
       foreign key (libraries_id) 
       references library

    alter table if exists horaires_libraries 
       add constraint FKgp2cdp4x9lfen33l7o4vh0i7p 
       foreign key (horaires_id) 
       references horaires

    alter table if exists library 
       add constraint FKsrg4g7v6qbb4hh5arm9p613b5 
       foreign key (horaires_id) 
       references horaires

    alter table if exists user_cote 
       add constraint FKajcn62ylx0vvox7y6wsi0fryv 
       foreign key (cote_id) 
       references cote

    alter table if exists user_cote 
       add constraint FKcrlkiftpp99mm313bonklyc85 
       foreign key (user_id) 
       references utilisateur
create sequence utilisateur_sequence start 240500 increment 1

    create table auteur (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table cote (
       id  serial not null,
        libelle varchar(255),
        reserved boolean default false,
        document_id int4,
        library_id int4,
        primary key (id)
    )

    create table document (
       id  serial not null,
        date int4,
        isbn varchar(13),
        libelle varchar(255),
        editeur_id int4,
        support_id int4,
        primary key (id)
    )

    create table document_auteurs (
       documents_id int4 not null,
        auteurs_id int4 not null
    )

    create table document_tags (
       documents_id int4 not null,
        tags_id int4 not null
    )

    create table editeur (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table horaires (
       id  serial not null,
        dimanche varchar(255),
        jeudi varchar(255),
        lundi varchar(255),
        mardi varchar(255),
        mercredi varchar(255),
        samedi varchar(255),
        vendredi varchar(255),
        primary key (id)
    )

    create table horaires_libraries (
       horaires_id int4 not null,
        libraries_id int4 not null
    )

    create table library (
       id  serial not null,
        code_postal int4,
        numero varchar(255),
        rue varchar(255),
        ville varchar(255),
        libelle varchar(255) not null,
        message varchar(255),
        horaires_id int4,
        primary key (id)
    )

    create table support (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table tag (
       id  serial not null,
        libelle varchar(255) not null,
        primary key (id)
    )

    create table user_cote (
       id  serial not null,
        date_emprunt date,
        date_reservation date,
        date_retour date,
        prolongation boolean default false,
        cote_id int4,
        user_id int4,
        primary key (id)
    )

    create table utilisateur (
       id int4 not null,
        authority varchar(255),
        date_naissance date,
        nom varchar(255),
        prenom varchar(255),
        code_postal int4,
        numero varchar(255),
        rue varchar(255),
        ville varchar(255),
        email varchar(255),
        phone varchar(255),
        password varchar(255),
        primary key (id)
    )

    alter table if exists horaires_libraries 
       add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)

    alter table if exists cote 
       add constraint FK78mreukprvmciseetap89ij2c 
       foreign key (document_id) 
       references document

    alter table if exists cote 
       add constraint FKstdro06dk6udp9i6iy1ljxx1c 
       foreign key (library_id) 
       references library

    alter table if exists document 
       add constraint FK95vni3agi9eyrag5a904au8wi 
       foreign key (editeur_id) 
       references editeur

    alter table if exists document 
       add constraint FKelnvl2u75ncxrtm29l6hl8xsm 
       foreign key (support_id) 
       references support

    alter table if exists document_auteurs 
       add constraint FK37cb7h13hx1k1kuw5vug7e94j 
       foreign key (auteurs_id) 
       references auteur

    alter table if exists document_auteurs 
       add constraint FKofjqrswxiutxv9h77ew4cgoby 
       foreign key (documents_id) 
       references document

    alter table if exists document_tags 
       add constraint FKdtj1985f11raye0lxeappmw1c 
       foreign key (tags_id) 
       references tag

    alter table if exists document_tags 
       add constraint FK3rgoymvryufm1sf9dc4bsvyt6 
       foreign key (documents_id) 
       references document

    alter table if exists horaires_libraries 
       add constraint FKloqqd373fy6ouvumhdqjsffix 
       foreign key (libraries_id) 
       references library

    alter table if exists horaires_libraries 
       add constraint FKgp2cdp4x9lfen33l7o4vh0i7p 
       foreign key (horaires_id) 
       references horaires

    alter table if exists library 
       add constraint FKsrg4g7v6qbb4hh5arm9p613b5 
       foreign key (horaires_id) 
       references horaires

    alter table if exists user_cote 
       add constraint FKajcn62ylx0vvox7y6wsi0fryv 
       foreign key (cote_id) 
       references cote

    alter table if exists user_cote 
       add constraint FKcrlkiftpp99mm313bonklyc85 
       foreign key (user_id) 
       references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_username int4, primary key (id))
create table utilisateur (username int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (username))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKso6j0d6g7blokkr0x2o0gflel foreign key (user_username) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_username int4, primary key (id))
create table utilisateur (username int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (username))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKso6j0d6g7blokkr0x2o0gflel foreign key (user_username) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_username int4, primary key (id))
create table utilisateur (username int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (username))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKso6j0d6g7blokkr0x2o0gflel foreign key (user_username) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_username int4, primary key (id))
create table utilisateur (username int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (username))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKso6j0d6g7blokkr0x2o0gflel foreign key (user_username) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_username int4, primary key (id))
create table utilisateur (username int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (username))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKso6j0d6g7blokkr0x2o0gflel foreign key (user_username) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_username int4, primary key (id))
create table utilisateur (username int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (username))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKso6j0d6g7blokkr0x2o0gflel foreign key (user_username) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
create sequence utilisateur_sequence start 240500 increment 1
create table auteur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table cote (id  serial not null, libelle varchar(255), reserved boolean default false, document_id int4, library_id int4, primary key (id))
create table document (id  serial not null, date int4, isbn varchar(13), libelle varchar(255), editeur_id int4, support_id int4, primary key (id))
create table document_auteurs (documents_id int4 not null, auteurs_id int4 not null)
create table document_tags (documents_id int4 not null, tags_id int4 not null)
create table editeur (id  serial not null, libelle varchar(255) not null, primary key (id))
create table horaires (id  serial not null, dimanche varchar(255), jeudi varchar(255), lundi varchar(255), mardi varchar(255), mercredi varchar(255), samedi varchar(255), vendredi varchar(255), primary key (id))
create table horaires_libraries (horaires_id int4 not null, libraries_id int4 not null)
create table library (id  serial not null, code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), libelle varchar(255) not null, message varchar(255), horaires_id int4, primary key (id))
create table support (id  serial not null, libelle varchar(255) not null, primary key (id))
create table tag (id  serial not null, libelle varchar(255) not null, primary key (id))
create table user_cote (id  serial not null, date_emprunt date, date_reservation date, date_retour date, prolongation boolean default false, cote_id int4, user_id int4, primary key (id))
create table utilisateur (id int4 not null, authority varchar(255), date_naissance date, nom varchar(255), prenom varchar(255), code_postal int4, numero varchar(255), rue varchar(255), ville varchar(255), email varchar(255), phone varchar(255), password varchar(255), primary key (id))
alter table if exists horaires_libraries add constraint UK_njavd3qp41eakrp3legwn2ofx unique (libraries_id)
alter table if exists cote add constraint FK78mreukprvmciseetap89ij2c foreign key (document_id) references document
alter table if exists cote add constraint FKstdro06dk6udp9i6iy1ljxx1c foreign key (library_id) references library
alter table if exists document add constraint FK95vni3agi9eyrag5a904au8wi foreign key (editeur_id) references editeur
alter table if exists document add constraint FKelnvl2u75ncxrtm29l6hl8xsm foreign key (support_id) references support
alter table if exists document_auteurs add constraint FK37cb7h13hx1k1kuw5vug7e94j foreign key (auteurs_id) references auteur
alter table if exists document_auteurs add constraint FKofjqrswxiutxv9h77ew4cgoby foreign key (documents_id) references document
alter table if exists document_tags add constraint FKdtj1985f11raye0lxeappmw1c foreign key (tags_id) references tag
alter table if exists document_tags add constraint FK3rgoymvryufm1sf9dc4bsvyt6 foreign key (documents_id) references document
alter table if exists horaires_libraries add constraint FKloqqd373fy6ouvumhdqjsffix foreign key (libraries_id) references library
alter table if exists horaires_libraries add constraint FKgp2cdp4x9lfen33l7o4vh0i7p foreign key (horaires_id) references horaires
alter table if exists library add constraint FKsrg4g7v6qbb4hh5arm9p613b5 foreign key (horaires_id) references horaires
alter table if exists user_cote add constraint FKajcn62ylx0vvox7y6wsi0fryv foreign key (cote_id) references cote
alter table if exists user_cote add constraint FKcrlkiftpp99mm313bonklyc85 foreign key (user_id) references utilisateur
