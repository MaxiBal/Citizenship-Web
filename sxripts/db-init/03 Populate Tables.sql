-- question_category

INSERT INTO public.question_category
(created_on, created_by, last_modified_on, last_modified_by, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid),'American Government'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_category
(created_on, created_by, last_modified_on, last_modified_by, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'American History'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_category
(created_on, created_by, last_modified_on, last_modified_by, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Integrated Civics'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

-- question_sub_category

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 1, 'Principles of American Democracy'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 1, 'System of Government'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 1, 'Rights and Responsibilities'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 2, 'Colonial Period and Independence'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 2, '1800s'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 2, 'Recent American History and Other Important Historical Information'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 3, 'Geography'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 3, 'Symbols'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_sub_category
(created_on, created_by, last_modified_on, last_modified_by, question_category_id, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 3, 'Holidays'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

-- question_type

INSERT INTO public.question_type
(created_on, created_by, last_modified_on, last_modified_by, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid),'Multiple Choice - Single Selectt'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_type
(created_on, created_by, last_modified_on, last_modified_by, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid),'Multiple Choice - SMulti Selec'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

INSERT INTO public.question_type
(created_on, created_by, last_modified_on, last_modified_by, app_name)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid),'Open Ended'
FROM auth."Users" AS u
WHERE u."UserName"  = 'Maxi';

-- question

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the supreme law of the land?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What does the Constitution do?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'The idea of self-government is in the first three words of the Constitution. What are these words?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is an amendment?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What do we call the first ten amendments to the Constitution?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is one right or freedom from the First Amendment?', null, 1, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'How many amendments does the Constitution have?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What did the Declaration of Independence do?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What are two rights in the Declaration of Independence?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is freedom of religion?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the economic system in the United States?', null, 1, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the “rule of law”?', null, 1, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one branch or part of the government.', null, 2, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What stops one branch of government from becoming too powerful?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who is in charge of the executive branch?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who makes federal laws?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What are the two parts of the U.S. Congress?', null, 2, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'How many U.S. Senators are there?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'We elect a U.S. Senator for how many years?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who is one of your state’s U.S. Senators now?', null, 2, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'The House of Representatives has how many voting members?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'We elect a U.S. Representative for how many years?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name your U.S. Representative.', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who does a U.S. Senator represent?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Why do some states have more Representatives than other states?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'We elect a President for how many years?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'In what month do we vote for President?', null, 2, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the name of the President of the United States now?', null, 2, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the name of the Vice President of the United States now?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'If the President can no longer serve, who becomes President?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'If both the President and the Vice President can no longer serve, who becomes President?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who is the Commander in Chief of the military?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who signs bills to become laws?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who vetoes bills?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What does the President’s Cabinet do?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What are two Cabinet-level positions?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What does the judicial branch do?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the highest court in the United States?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'How many justices are on the Supreme Court?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who is the Chief Justice of the United States now?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Under our Constitution, some powers belong to the federal government. What is one power of the federal government?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Under our Constitution, some powers belong to the states. What is one power of the states?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who is the Governor of your state now?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the capital of your state?', null, 2, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What are the two major political parties in the United States?', null, 2, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the political party of the President now?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the name of the Speaker of the House of Representatives now?', null, 2, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'There are four amendments to the Constitution about who can vote. Describe one of them.', null, 3, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is one responsibility that is only for United States citizens?', null, 3, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one right only for United States citizens.', null, 3, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What are two rights of everyone living in the United States?', null, 3, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What do we show loyalty to when we say the Pledge of Allegiance?', null, 3, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is one promise you make when you become a United States citizen?', null, 3, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'How old do citizens have to be to vote for President?', null, 3, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What are two ways that Americans can participate in their democracy?', null, 3, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'When is the last day you can send in federal income tax forms?', null, 3, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'When must all men register for the Selective Service?', null, 3, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is one reason colonists came to America?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who lived in America before the Europeans arrived?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What group of people was taken to America and sold as slaves?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Why did the colonists fight the British?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who wrote the Declaration of Independence?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'When was the Declaration of Independence adopted?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'There were 13 original states. Name three.', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What happened at the Constitutional Convention?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'When was the Constitution written?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is one thing Benjamin Franklin is famous for?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who is the “Father of Our Country”?', null, 4, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who was the first President?', null, 4, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What territory did the United States buy from France in 1803?', null, 5, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one war fought by the United States in the 1800s.', null, 5, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name the U.S. war between the North and the South.', null, 5, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one problem that led to the Civil War.', null, 5, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What was one important thing that Abraham Lincoln did?', null, 5, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What did the Emancipation Proclamation do?', null, 5, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What did Susan B. Anthony do?', null, 5, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one war fought by the United States in the 1900s.', null, 6, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who was President during World War I?', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who was President during the Great Depression and World War II?', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Who did the United States fight in World War II?', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Before he was President, Eisenhower was a general. What war was he in?', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'During the Cold War, what was the main concern of the United States?', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What movement tried to end racial discrimination?', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What did Martin Luther King, Jr. do?', null, 6, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What major event happened on September 11, 2001, in the United States?', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one American Indian tribe in the United States.', null, 6, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one of the two longest rivers in the United States.', null, 7, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What ocean is on the West Coast of the United States?', null, 7, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What ocean is on the East Coast of the United States?', null, 7, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one U.S. territory.', null, 7, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one state that borders Canada.', null, 7, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name one state that borders Mexico.', null, 7, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the capital of the United States?', null, 7, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Where is the Statue of Liberty?', null, 7, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Why does the flag have 13 stripes?', null, 8, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Why does the flag have 50 stars?', null, 8, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'What is the name of the national anthem?', null, 8, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'When do we celebrate Independence Day?', null, 9, 1, True::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.question
(created_on, created_by, last_modified_on, last_modified_by, prompt, image_url, question_sub_category_id, question_type_id, has_asterisk)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 'Name two national U.S. holidays.', null, 9, 1, False::boolean
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

-- answer

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 1, 'the Constitution', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 2, 'sets up the government', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 2, 'defines the government', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 2, 'protects basic rights of Americans', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 3, 'We the People', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 4, 'a change (to the Constitution)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 4, 'an addition (to the Constitution)', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 5, 'the Bill of Rights', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 6, 'speech', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 6, 'religion', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 6, 'assembly', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 6, 'press', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 6, 'petition the government', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 7, 'twenty-seven (27)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 8, 'announced our independence (from Great Britain)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 8, 'declared our independence (from Great Britain)', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 8, 'said that the United States is free (from Great Britain)', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 9, 'life', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 9, 'liberty', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 9, 'pursuit of happiness', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 10, 'You can practice any religion, or not practice a religion', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 11, 'capitalist economy', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 11, 'market economy', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 12, 'Everyone must follow the law', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 12, 'Leaders must obey the law', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 12, 'Government must obey the law', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 12, 'No one is above the law', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 13, 'Congress', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 13, 'legislative', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 13, 'President', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 13, 'executive', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 13, 'the courts', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 13, 'judicial', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 14, 'checks and balances', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 14, 'separation of powers', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 15, 'the President', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 16, 'Congress', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 16, 'Senate and House (of Representatives)', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 16, '(U.S. or national) legislature', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 17, 'the Senate and House (of Representatives)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 18, 'one hundred (100)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 19, 'six (6)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 20, 'answers will vary', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 21, 'four hundred thirty-five (435)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 22, 'two (2)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 23, 'Answers will vary. [Residents of territories with nonvoting Delegates or Resident Commissioners may provide the name of that Delegate or Commissioner. Also acceptable is any statement that the territory has no (voting) Representatives in Congress.]', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 24, 'all people of the state', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 25, '(because of) the state’s population', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 25, '(because) they have more people', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 25, '(because) some states have more people', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 26, 'four (4)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 27, 'November', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 28, 'Visit uscis.gov/citizenship/testupdates for the name of the President of the United States.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 29, 'Visit uscis.gov/citizenship/testupdates for the name of the Vice President of the United States.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 30, 'the Vice President', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 31, 'the Speaker of the House', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 32, 'the President', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 33, 'the President', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 34, 'the President', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 35, 'advises the President', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Agriculture', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Commerce', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Defense', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Education', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Energy', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Health and Human Services', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Homeland Security', null, null, false, 7
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Housing and Urban Development', null, null, false, 8
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of the Interior', null, null, false, 9
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Labor', null, null, false, 10
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of State', null, null, false, 11
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Transportation', null, null, false, 12
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of the Treasury', null, null, false, 13
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Secretary of Veterans Affairs', null, null, false, 14
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Attorney General', null, null, false, 15
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 36, 'Vice President', null, null, false, 16
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 37, 'reviews laws', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 37, 'explains laws', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 37, 'resolves disputes (disagreements)', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 37, 'decides if a law goes against the Constitution', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 38, 'the Supreme Court', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 39, 'Visit uscis.gov/citizenship/testupdates for the number of justices on the Supreme Court.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 40, 'Visit uscis.gov/citizenship/testupdates for the name of the Chief Justice of the United States.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 41, 'to print money', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 41, 'to declare war', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 41, 'to create an army', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 41, 'to make treaties', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 42, 'provide schooling and education', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 42, 'provide protection (police)', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 42, 'provide safety (fire departments)', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 42, 'give a driver’s license', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 42, 'approve zoning and land use', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 43, 'Answers will vary. [District of Columbia residents should answer that D.C. does not have a Governor.]', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 44, 'Answers will vary. [District of Columbia residents should answer that D.C. is not a state and does not have a capital. Residents of U.S. territories should name the capital of the territory.]', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 45, 'Democratic and Republican', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 46, 'Visit uscis.gov/citizenship/testupdates for the political party of the President.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 47, 'Visit uscis.gov/citizenship/testupdates for the name of the Speaker of the House of Representatives.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 48, 'Citizens eighteen (18) and older (can vote).', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 48, 'You don’t have to pay (a poll tax) to vote.', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 48, 'Any citizen can vote. (Women and men can vote.)', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 48, 'A male citizen of any race (can vote)', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 49, 'serve on a jury', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 49, 'vote in a federal election', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 50, 'vote in a federal election', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 50, 'run for federal office', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 51, 'freedom of expression', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 51, 'freedom of speech', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 51, 'freedom of assembly', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 51, 'freedom to petition the government', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 51, 'freedom of religion', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 51, 'the right to bear arms', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 52, 'the United States', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 52, 'the flag', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 53, 'give up loyalty to other countries', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 53, 'defend the Constitution and laws of the United States', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 53, 'obey the laws of the United States', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 53, 'serve in the U.S. military (if needed)', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 53, 'serve (do important work for) the nation (if needed)', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 53, 'be loyal to the United States', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 54, 'eighteen (18) and older', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'vote', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'join a political party', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'help with a campaign', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'join a civic group', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'join a community group', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'give an elected official your opinion on an issue', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'call Senators and Representatives', null, null, false, 7
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'publicly support or oppose an issue or policy', null, null, false, 8
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'run for office', null, null, false, 9
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 55, 'write to a newspaper', null, null, false, 10
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 56, 'April 15', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 57, 'at age eighteen (18)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 57, 'between eighteen (18) and twenty-six (26)', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 58, 'reedom', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 58, 'political liberty', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 58, 'religious freedom', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 58, 'economic opportunity', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 58, 'practice their religion', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 58, 'escape persecution', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 59, 'American Indians', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 59, 'Native Americans', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 60, 'Africans', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 60, 'people from Africa', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 61, 'because of high taxes (taxation without representation)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 61, 'because the British army stayed in their houses (boarding, quartering)', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 61, 'because they didn’t have self-government', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 62, '(Thomas) Jefferson', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 63, 'July 4, 1776', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'New Hampshire', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Massachusetts', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Rhode Island', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Connecticut', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'New York', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'New Jersey', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Pennsylvania', null, null, false, 7
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Delaware', null, null, false, 8
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Maryland', null, null, false, 9
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Virginia', null, null, false, 10
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'North Carolina', null, null, false, 11
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'South Carolina', null, null, false, 12
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 64, 'Georgia', null, null, false, 13
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 65, 'The Constitution was written.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 65, 'The Founding Fathers wrote the Constitution.', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 66, '1787', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 67, 'James) Madison', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 67, '(Alexander) Hamilton', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 67, '(John) Jay', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 67, 'Publius', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 68, 'U.S. diplomat', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 68, 'oldest member of the Constitutional Convention', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 68, 'first Postmaster General of the United States', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 68, 'writer of “Poor Richard’s Almanac”', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 68, 'started the first free libraries', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 69, '(George) Washington', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 70, '(George) Washington', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 71, 'the Louisiana Territory', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 71, 'Louisiana', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 72, 'War of 1812', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 72, 'Mexican-American War', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 72, 'Civil War', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 72, 'Spanish-American War', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 73, 'the Civil War', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 73, 'the War between the States', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 74, 'slavery', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 74, 'economic reasons', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 74, 'states’ rights', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 75, 'freed the slaves (Emancipation Proclamation)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 75, 'saved (or preserved) the Union', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 75, 'led the United States during the Civil War', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 76, 'freed the slaves', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 76, 'freed slaves in the Confederacy', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 76, 'freed slaves in the Confederate states', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 76, 'freed slaves in most Southern states', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 77, 'fought for women’s rights', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 77, 'fought for civil rights', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 78, 'World War I', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 78, 'World War II', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 78, 'Korean War', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 78, 'Vietnam War', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 78, '(Persian) Gulf War', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 79, '(Woodrow) Wilson', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 80, '(Franklin) Roosevelt', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 81, 'Japan, Germany, and Italy', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 82, 'World War II', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 83, 'Communism', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 84, 'civil rights (movement)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 85, 'fought for civil rights', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 85, 'worked for equality for all Americans', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 86, 'Terrorists attacked the United States.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Cherokee', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Navajo', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Sioux', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Chippewa', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Choctaw', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Pueblo', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Apache', null, null, false, 7
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Iroquois', null, null, false, 8
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Creek', null, null, false, 9
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Blackfeet', null, null, false, 10
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Seminole', null, null, false, 11
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Cheyenne', null, null, false, 12
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Arawak', null, null, false, 13
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Shawnee', null, null, false, 14
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Mohegan', null, null, false, 15
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Huron', null, null, false, 16
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Oneida', null, null, false, 17
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Lakota', null, null, false, 18
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Crow', null, null, false, 19
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Teton', null, null, false, 20
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Hopi', null, null, false, 21
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 87, 'Inuit', null, null, false, 22
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 88, 'Missouri (River)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 88, 'Mississippi (River)', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 89, 'Pacific (Ocean)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 90, 'Atlantic (Ocean)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 91, 'Puerto Rico', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 91, 'U.S. Virgin Islands', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 91, 'American Samoa', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 91, 'Northern Mariana Islands', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 91, 'Guam', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Maine', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'New Hampshire', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Vermont', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'New York', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Pennsylvania', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Ohio', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Michigan', null, null, false, 7
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Minnesota', null, null, false, 8
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'North Dakota', null, null, false, 9
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Montana', null, null, false, 10
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Idaho', null, null, false, 11
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Washington', null, null, false, 12
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 92, 'Alaska', null, null, false, 13
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 93, 'California', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 93, 'Arizona', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 93, 'New Mexico', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 93, 'Texas', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 94, 'Washington, D.C.', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 95, 'New York (Harbor)', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 95, 'Liberty Island', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 95, '[Also acceptable are New Jersey, near New York City, and on the Hudson (River).]', null, null, true, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 96, 'because there were 13 original colonies', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 97, 'because the stripes represent the original colonies', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 98, 'because there is one star for each state', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 98, 'because each star represents a state', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 98, 'because there are 50 states', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 99, 'The Star-Spangled Banner', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'New Year’s Day', null, null, false, 1
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Martin Luther King, Jr. Day', null, null, false, 2
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Presidents’ Day', null, null, false, 3
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Memorial Day', null, null, false, 4
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Independence Day', null, null, false, 5
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Labor Day', null, null, false, 6
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Columbus Day', null, null, false, 7
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Veterans Day', null, null, false, 8
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Thanksgiving', null, null, false, 9
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

INSERT INTO public.answer
(created_on, created_by, last_modified_on, last_modified_by, question_id, "key", addl_info, img_url, is_supplemental, sort)
SELECT now(), CAST(u."Id" as uuid), now(), CAST(u."Id" as uuid), 100, 'Christmas', null, null, false, 10
FROM auth."Users" AS u
WHERE u."UserName" = 'Maxi';

