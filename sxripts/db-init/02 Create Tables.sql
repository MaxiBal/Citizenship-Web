DROP TABLE IF EXISTS public.answer;
DROP TABLE IF EXISTS public.question;
DROP TABLE IF EXISTS public.question_sub_category;
DROP TABLE IF EXISTS public.question_category;
DROP TABLE IF EXISTS public.question_type;

-- public.question_category definition

CREATE TABLE public.question_category (
	id int2 NOT NULL GENERATED ALWAYS AS IDENTITY,
	created_on timestamptz NOT NULL DEFAULT now(),
	created_by uuid NOT NULL,
	last_modified_on timestamptz NOT NULL DEFAULT now(),
	last_modified_by uuid NOT NULL,
	app_name varchar NOT NULL,
	CONSTRAINT question_category_pk PRIMARY KEY (id)
);

-- public.question_sub_category definition

CREATE TABLE public.question_sub_category (
	id int2 NOT NULL GENERATED ALWAYS AS IDENTITY,
	created_on timestamptz NOT NULL DEFAULT now(),
	created_by uuid NOT NULL,
	last_modified_on timestamptz NOT NULL DEFAULT now(),
	last_modified_by uuid NOT NULL,
	question_category_id int2 NOT NULL,
	app_name varchar NOT NULL,
	CONSTRAINT question_sub_category_pk PRIMARY KEY (id)
);
CREATE INDEX question_sub_category_question_category_id_idx ON public.question_sub_category USING btree (question_category_id);


-- public.question_sub_category foreign keys

ALTER TABLE public.question_sub_category ADD CONSTRAINT question_sub_category_fk FOREIGN KEY (question_category_id) REFERENCES public.question_category(id) ON DELETE CASCADE ON UPDATE CASCADE;


-- public.question_type definition

CREATE TABLE public.question_type (
	id int2 NOT NULL GENERATED ALWAYS AS IDENTITY,
	created_on timestamptz NOT NULL DEFAULT now(),
	created_by uuid NOT NULL,
	last_modified_on timestamptz NOT NULL DEFAULT now(),
	last_modified_by uuid NOT NULL,
	app_name varchar NOT NULL,
	CONSTRAINT question_type_pk PRIMARY KEY (id)
);


-- public.question definition

CREATE TABLE public.question (
	id int2 NOT NULL GENERATED ALWAYS AS IDENTITY,
	created_on timetz NOT NULL DEFAULT now(),
	created_by uuid NOT NULL,
	last_modified_on timetz NOT NULL DEFAULT now(),
	last_modified_by uuid NOT NULL,
	prompt varchar NOT NULL,
	image_url text NULL,
	question_sub_category_id int2 NOT NULL,
	question_type_id int2 NOT NULL,
	has_asterisk bool NOT NULL DEFAULT 0::boolean,
	CONSTRAINT question_pk PRIMARY KEY (id)
);
CREATE INDEX question_question_sub_category_id_idx ON public.question USING btree (question_sub_category_id);
CREATE INDEX question_question_type_id_idx ON public.question USING btree (question_type_id);

-- public.question foreign keys

ALTER TABLE public.question ADD CONSTRAINT question_fk FOREIGN KEY (question_sub_category_id) REFERENCES public.question_sub_category(id);
ALTER TABLE public.question ADD CONSTRAINT question_fk_1 FOREIGN KEY (question_type_id) REFERENCES public.question_type(id) ON UPDATE CASCADE;


-- public.answer definition

CREATE TABLE public.answer (
	id int4 NOT NULL GENERATED ALWAYS AS IDENTITY,
	created_on timestamptz NOT NULL DEFAULT now(),
	created_by uuid NOT NULL,
	last_modified_on timestamptz NOT NULL DEFAULT now(),
	last_modified_by uuid NOT NULL,
	question_id int2 NOT NULL,
	"key" varchar NOT NULL,
	addl_info varchar NULL,
	img_url varchar NULL,
	is_supplemental bool NOT NULL DEFAULT false,
	sort int4 NOT NULL DEFAULT 1,
	CONSTRAINT answer_pk PRIMARY KEY (id)
);
CREATE INDEX answer_question_id_idx ON public.answer USING btree (question_id);


-- public.answer foreign keys

ALTER TABLE public.answer ADD CONSTRAINT answer_fk FOREIGN KEY (question_id) REFERENCES public.question(id) ON DELETE CASCADE ON UPDATE CASCADE;