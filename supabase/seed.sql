SET session_replication_role = replica;

--
-- PostgreSQL database dump
--

-- Dumped from database version 15.1 (Ubuntu 15.1-1.pgdg20.04+1)
-- Dumped by pg_dump version 15.6 (Ubuntu 15.6-1.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: audit_log_entries; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."audit_log_entries" ("instance_id", "id", "payload", "created_at", "ip_address") VALUES
	('00000000-0000-0000-0000-000000000000', '4e9b55db-a8df-4145-a372-9404b2d2cd79', '{"action":"user_signedup","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"team","traits":{"provider":"email"}}', '2024-05-25 18:02:55.105578+00', ''),
	('00000000-0000-0000-0000-000000000000', '959ba1dd-ed5e-4d21-b3a7-9b9cd050217f', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:02:55.10773+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e07ca586-9ea4-4a5d-954c-e925027e15f2', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:20:46.236475+00', ''),
	('00000000-0000-0000-0000-000000000000', '17f9cd06-b280-46de-848d-4e70945bd84f', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:20:53.526825+00', ''),
	('00000000-0000-0000-0000-000000000000', 'aec8a531-eaaf-438e-9509-81e9b8cef622', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:20:56.796571+00', ''),
	('00000000-0000-0000-0000-000000000000', '9ee513ad-5e7a-43a1-8b5e-d27fd06d0fbf', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:24:01.608052+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f33314e9-dbf7-4552-b5b3-ccc3cc465c7d', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:24:30.909688+00', ''),
	('00000000-0000-0000-0000-000000000000', '254f72ed-d1d0-4188-ae10-3b1fe27c184c', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:24:38.965334+00', ''),
	('00000000-0000-0000-0000-000000000000', '06ff35ed-8aea-436a-9d54-b9d378d25b0e', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:24:41.45423+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ba7e7451-f0d5-4505-8d9b-20485b4f9dde', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:33:16.014254+00', ''),
	('00000000-0000-0000-0000-000000000000', '3ca13597-752d-48e1-8829-2addc2e87fcc', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:33:17.887599+00', ''),
	('00000000-0000-0000-0000-000000000000', '81bc0ade-3662-466e-8d95-328f6088b2e0', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:44:36.816389+00', ''),
	('00000000-0000-0000-0000-000000000000', '8bad236a-e6ff-412d-993c-8383c364050e', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:45:06.189557+00', ''),
	('00000000-0000-0000-0000-000000000000', '33ab488b-5ca7-43d9-9106-a7d6d5fc68e1', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:45:21.817626+00', ''),
	('00000000-0000-0000-0000-000000000000', '9f8bf418-0bf7-4915-8914-5ba14b2dd630', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:45:23.307056+00', ''),
	('00000000-0000-0000-0000-000000000000', '71ba00c0-6b23-4c25-a9fb-55e158e3b80a', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:47:02.264169+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c6005eea-a50f-445b-b613-c89124e8d551', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:47:58.575987+00', ''),
	('00000000-0000-0000-0000-000000000000', '5676ae59-e892-4a9c-a275-815bfa755751', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:50:57.069231+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f3414c88-6421-4156-81dd-707d77928d56', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 18:50:58.464796+00', ''),
	('00000000-0000-0000-0000-000000000000', '1c6f1454-cb24-4aa6-a728-b272dc88df89', '{"action":"user_repeated_signup","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"user","traits":{"provider":"email"}}', '2024-05-25 18:50:59.245484+00', ''),
	('00000000-0000-0000-0000-000000000000', '51bcdad9-abe2-4372-9b88-49773ae37278', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 18:51:25.0226+00', ''),
	('00000000-0000-0000-0000-000000000000', '462c088b-6fc9-4434-a759-ac9b55c6cc9c', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 19:22:46.402567+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c950143d-d1ff-471a-8199-ee94a063ebd3', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 19:22:50.753836+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cf4b7504-8c6a-4063-a9c3-c0ed10ee5f04', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 19:23:23.819376+00', ''),
	('00000000-0000-0000-0000-000000000000', '49a98286-6c90-4173-a429-e11a958e5fb5', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 19:23:25.678837+00', ''),
	('00000000-0000-0000-0000-000000000000', 'c1e5f2af-5d4c-4c87-8462-94a2f3551b3e', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 19:23:32.162497+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f766425-0216-43e4-9b5d-7b623927ed14', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 19:34:46.02225+00', ''),
	('00000000-0000-0000-0000-000000000000', '598c0679-21ea-4b04-9a63-a4c547d01118', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 20:05:57.328643+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dadf0cfc-d18e-4ebe-990a-f5402f425756', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 20:05:59.591201+00', ''),
	('00000000-0000-0000-0000-000000000000', '63a866e7-1f4f-43d6-974e-601f2a4ddee3', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-25 20:06:00.860812+00', ''),
	('00000000-0000-0000-0000-000000000000', '36fa4b52-68d8-42f4-895b-cd49ab1378bf', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-25 20:06:02.697621+00', ''),
	('00000000-0000-0000-0000-000000000000', '37042f83-e7da-4d19-8359-a8f133528ec1', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 06:28:28.34753+00', ''),
	('00000000-0000-0000-0000-000000000000', 'ab4c6c8b-cc2c-4e8d-96c2-9772fd82bc37', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 06:28:28.348931+00', ''),
	('00000000-0000-0000-0000-000000000000', '3e7eba32-7174-47e5-84b0-6d4b9ea72cd7', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 07:29:37.011002+00', ''),
	('00000000-0000-0000-0000-000000000000', '6b48380c-6a6b-49e1-b625-1066eb23ab38', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 07:29:37.012244+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a4d1dfcb-12ca-44b3-8d19-feac35d13ade', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 08:41:56.374082+00', ''),
	('00000000-0000-0000-0000-000000000000', '033906f0-fabc-47c1-aa43-b7d0b4bf6d18', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 08:41:56.374541+00', ''),
	('00000000-0000-0000-0000-000000000000', '1885e4b2-f67f-48a4-a8f8-a9cb637a558a', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 12:50:40.940298+00', ''),
	('00000000-0000-0000-0000-000000000000', 'e54aea44-1d50-402b-be7a-2e2e12836b60', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 12:50:40.94116+00', ''),
	('00000000-0000-0000-0000-000000000000', '20aaf6af-b738-4a6b-919a-e63f84f51240', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 13:53:31.295446+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a2b29826-9a14-4f8b-bfc7-e1cdba17b42a', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 13:53:31.296372+00', ''),
	('00000000-0000-0000-0000-000000000000', 'd313ec30-b944-408d-9e32-7143b9990c18', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 13:53:31.418531+00', ''),
	('00000000-0000-0000-0000-000000000000', 'dc206e29-8fba-4d0c-9aee-e46663bcb280', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 14:57:19.263529+00', ''),
	('00000000-0000-0000-0000-000000000000', '3136b476-1553-4932-a8ea-9340a9214b66', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 14:57:19.264824+00', ''),
	('00000000-0000-0000-0000-000000000000', '93f94878-a1cd-4ea9-a114-42dd16cc2cd5', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 15:58:08.71783+00', ''),
	('00000000-0000-0000-0000-000000000000', '45d965ef-3c87-42f1-8d62-e2b909dada62', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-26 15:58:08.719187+00', ''),
	('00000000-0000-0000-0000-000000000000', '7b316246-5006-4830-ba6b-585d8838c561', '{"action":"logout","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-26 16:52:01.35962+00', ''),
	('00000000-0000-0000-0000-000000000000', '75b5d95d-8f96-4b4f-a483-76af46ca5361', '{"action":"login","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-26 16:52:36.973686+00', ''),
	('00000000-0000-0000-0000-000000000000', '66cf0b1f-2cfa-4977-a8e0-0c98b5fd4c7d', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 06:21:29.16035+00', ''),
	('00000000-0000-0000-0000-000000000000', 'cfb9fb13-2eda-4d5f-9698-b34d35e88f79', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 06:21:29.16123+00', ''),
	('00000000-0000-0000-0000-000000000000', '60bb0d05-84a8-49fa-8bfb-60ec72fa49cc', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 08:32:57.979924+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a1e831a0-96b8-4383-97d9-e05739163364', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 08:32:57.981072+00', ''),
	('00000000-0000-0000-0000-000000000000', '3014d991-4446-4490-8919-266c8dabc336', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 10:14:28.427165+00', ''),
	('00000000-0000-0000-0000-000000000000', 'deb46e2e-162d-42d2-8da6-d6d4a06ea2cc', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 10:14:28.428294+00', ''),
	('00000000-0000-0000-0000-000000000000', '4c09d3a6-e123-4965-94d7-49abd628bbe1', '{"action":"user_signedup","actor_id":"00000000-0000-0000-0000-000000000000","actor_username":"service_role","actor_via_sso":false,"log_type":"team","traits":{"user_email":"test2@test.com","user_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","user_phone":""}}', '2024-05-27 10:50:12.041814+00', ''),
	('00000000-0000-0000-0000-000000000000', '0159d809-b69b-4906-935a-732f5e22c728', '{"action":"login","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-27 10:51:25.026024+00', ''),
	('00000000-0000-0000-0000-000000000000', '5738d65c-2d6e-4a60-9f7f-2a354cf74987', '{"action":"logout","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"account"}', '2024-05-27 10:51:39.110905+00', ''),
	('00000000-0000-0000-0000-000000000000', '827b9a50-f8d2-499a-b2ca-66f7a6d763bc', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 14:50:32.191113+00', ''),
	('00000000-0000-0000-0000-000000000000', 'f988db9c-783c-45e0-b856-9101f15b3346', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 14:50:32.191676+00', ''),
	('00000000-0000-0000-0000-000000000000', '8c5583e9-8ce2-4d1e-9ef5-e405c94ac11a', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 18:39:24.69422+00', ''),
	('00000000-0000-0000-0000-000000000000', 'de17310c-e381-408c-9ff4-3605a09466ee', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-27 18:39:24.695907+00', ''),
	('00000000-0000-0000-0000-000000000000', '7658a86e-db4a-4e46-83b3-386898ef5938', '{"action":"login","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"account","traits":{"provider":"email"}}', '2024-05-27 18:58:21.824285+00', ''),
	('00000000-0000-0000-0000-000000000000', '4a898744-73f3-4f69-8e72-2a64ecf76fbd', '{"action":"token_refreshed","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-28 08:14:02.001032+00', ''),
	('00000000-0000-0000-0000-000000000000', '38b022f2-16cf-4857-8591-d22ad2d53986', '{"action":"token_revoked","actor_id":"6687eef7-bf17-430f-b080-03b24013a524","actor_username":"test@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-28 08:14:02.001857+00', ''),
	('00000000-0000-0000-0000-000000000000', '7fd01c73-83de-4520-a014-95f994b0f144', '{"action":"token_refreshed","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-28 14:43:55.813969+00', ''),
	('00000000-0000-0000-0000-000000000000', '1e9bfd3f-51d7-424a-ac3d-5139add798d6', '{"action":"token_revoked","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-28 14:43:55.815218+00', ''),
	('00000000-0000-0000-0000-000000000000', '6f9d4112-da42-4096-9d0a-fce936bd8fdd', '{"action":"token_refreshed","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-28 19:23:30.028144+00', ''),
	('00000000-0000-0000-0000-000000000000', '7721c91c-d7bf-45af-9fc1-6b44e994cabd', '{"action":"token_revoked","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-28 19:23:30.029459+00', ''),
	('00000000-0000-0000-0000-000000000000', 'a7a07681-958f-4a1a-86d8-f24565e1cc56', '{"action":"token_refreshed","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-29 07:23:38.334685+00', ''),
	('00000000-0000-0000-0000-000000000000', '318e2138-8520-4efa-a602-b490a726a08f', '{"action":"token_revoked","actor_id":"c1aafe82-8526-4b05-917d-311bbf8b2bd7","actor_username":"test2@test.com","actor_via_sso":false,"log_type":"token"}', '2024-05-29 07:23:38.335683+00', '');


--
-- Data for Name: flow_state; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: users; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."users" ("instance_id", "id", "aud", "role", "email", "encrypted_password", "email_confirmed_at", "invited_at", "confirmation_token", "confirmation_sent_at", "recovery_token", "recovery_sent_at", "email_change_token_new", "email_change", "email_change_sent_at", "last_sign_in_at", "raw_app_meta_data", "raw_user_meta_data", "is_super_admin", "created_at", "updated_at", "phone", "phone_confirmed_at", "phone_change", "phone_change_token", "phone_change_sent_at", "email_change_token_current", "email_change_confirm_status", "banned_until", "reauthentication_token", "reauthentication_sent_at", "is_sso_user", "deleted_at", "is_anonymous") VALUES
	('00000000-0000-0000-0000-000000000000', '6687eef7-bf17-430f-b080-03b24013a524', 'authenticated', 'authenticated', 'test@test.com', '$2a$10$D89fgDYGvp45DzB4jrmbxuUnHXgMGrlGq40GNq4YPp9MfbchCVO32', '2024-05-25 18:02:55.106234+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-05-26 16:52:36.974155+00', '{"provider": "email", "providers": ["email"]}', '{"sub": "6687eef7-bf17-430f-b080-03b24013a524", "email": "test@test.com", "email_verified": false, "phone_verified": false}', NULL, '2024-05-25 18:02:55.100657+00', '2024-05-28 08:14:02.003545+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false),
	('00000000-0000-0000-0000-000000000000', 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', 'authenticated', 'authenticated', 'test2@test.com', '$2a$10$oN6LTBRbGH9uxJ7DEjWeaeaMgG34LuTU33397iXhvUflb6s2tWgv2', '2024-05-27 10:50:12.042768+00', NULL, '', NULL, '', NULL, '', '', NULL, '2024-05-27 18:58:21.824794+00', '{"provider": "email", "providers": ["email"]}', '{}', NULL, '2024-05-27 10:50:12.040292+00', '2024-05-29 07:23:38.338493+00', NULL, NULL, '', '', NULL, '', 0, NULL, '', NULL, false, NULL, false);


--
-- Data for Name: identities; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."identities" ("provider_id", "user_id", "identity_data", "provider", "last_sign_in_at", "created_at", "updated_at", "id") VALUES
	('6687eef7-bf17-430f-b080-03b24013a524', '6687eef7-bf17-430f-b080-03b24013a524', '{"sub": "6687eef7-bf17-430f-b080-03b24013a524", "email": "test@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-05-25 18:02:55.103623+00', '2024-05-25 18:02:55.103665+00', '2024-05-25 18:02:55.103665+00', '989f6e35-94c0-4a84-9b1f-a073caf8420f'),
	('c1aafe82-8526-4b05-917d-311bbf8b2bd7', 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', '{"sub": "c1aafe82-8526-4b05-917d-311bbf8b2bd7", "email": "test2@test.com", "email_verified": false, "phone_verified": false}', 'email', '2024-05-27 10:50:12.041224+00', '2024-05-27 10:50:12.041252+00', '2024-05-27 10:50:12.041252+00', '737f5a6f-2a5b-4e28-ac73-4c829da7bfe3');


--
-- Data for Name: instances; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sessions; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."sessions" ("id", "user_id", "created_at", "updated_at", "factor_id", "aal", "not_after", "refreshed_at", "user_agent", "ip", "tag") VALUES
	('0b4660d2-97df-4fd2-ab1e-024f9fba90fc', '6687eef7-bf17-430f-b080-03b24013a524', '2024-05-26 16:52:36.974189+00', '2024-05-28 08:14:02.004319+00', NULL, 'aal1', NULL, '2024-05-28 08:14:02.004262', 'Next.js Middleware', '192.168.65.1', NULL),
	('12bef701-f4c1-4ead-8271-54ef66cc83ce', 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', '2024-05-27 18:58:21.824827+00', '2024-05-29 07:23:38.340044+00', NULL, 'aal1', NULL, '2024-05-29 07:23:38.33997', 'Next.js Middleware', '192.168.65.1', NULL);


--
-- Data for Name: mfa_amr_claims; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."mfa_amr_claims" ("session_id", "created_at", "updated_at", "authentication_method", "id") VALUES
	('0b4660d2-97df-4fd2-ab1e-024f9fba90fc', '2024-05-26 16:52:36.975463+00', '2024-05-26 16:52:36.975463+00', 'password', 'f385df8b-c556-45e9-bcd5-905d9824d31e'),
	('12bef701-f4c1-4ead-8271-54ef66cc83ce', '2024-05-27 18:58:21.826062+00', '2024-05-27 18:58:21.826062+00', 'password', '6be859a2-a03c-4375-abd4-e00d78e97da4');


--
-- Data for Name: mfa_factors; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: mfa_challenges; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: refresh_tokens; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--

INSERT INTO "auth"."refresh_tokens" ("instance_id", "id", "token", "user_id", "revoked", "created_at", "updated_at", "parent", "session_id") VALUES
	('00000000-0000-0000-0000-000000000000', 23, 'KQdfK1IRhbn45MkIycYOAg', '6687eef7-bf17-430f-b080-03b24013a524', true, '2024-05-26 16:52:36.9747+00', '2024-05-27 06:21:29.16199+00', NULL, '0b4660d2-97df-4fd2-ab1e-024f9fba90fc'),
	('00000000-0000-0000-0000-000000000000', 24, 'ZfM6oU3rRTBSngCAcPj5Sw', '6687eef7-bf17-430f-b080-03b24013a524', true, '2024-05-27 06:21:29.162621+00', '2024-05-27 08:32:57.982004+00', 'KQdfK1IRhbn45MkIycYOAg', '0b4660d2-97df-4fd2-ab1e-024f9fba90fc'),
	('00000000-0000-0000-0000-000000000000', 25, 'AKMkEfEgq1meyTbKUXCirQ', '6687eef7-bf17-430f-b080-03b24013a524', true, '2024-05-27 08:32:57.982736+00', '2024-05-27 10:14:28.429099+00', 'ZfM6oU3rRTBSngCAcPj5Sw', '0b4660d2-97df-4fd2-ab1e-024f9fba90fc'),
	('00000000-0000-0000-0000-000000000000', 26, '0iilrzO4kcGfhjfJXpVHxw', '6687eef7-bf17-430f-b080-03b24013a524', true, '2024-05-27 10:14:28.429591+00', '2024-05-27 14:50:32.19216+00', 'AKMkEfEgq1meyTbKUXCirQ', '0b4660d2-97df-4fd2-ab1e-024f9fba90fc'),
	('00000000-0000-0000-0000-000000000000', 28, 'FbPvXpL7emlQqgpefiWlkg', '6687eef7-bf17-430f-b080-03b24013a524', true, '2024-05-27 14:50:32.192453+00', '2024-05-27 18:39:24.696763+00', '0iilrzO4kcGfhjfJXpVHxw', '0b4660d2-97df-4fd2-ab1e-024f9fba90fc'),
	('00000000-0000-0000-0000-000000000000', 29, 'og15VQAoR-qKEHfaoQmFPA', '6687eef7-bf17-430f-b080-03b24013a524', true, '2024-05-27 18:39:24.697356+00', '2024-05-28 08:14:02.002557+00', 'FbPvXpL7emlQqgpefiWlkg', '0b4660d2-97df-4fd2-ab1e-024f9fba90fc'),
	('00000000-0000-0000-0000-000000000000', 31, '0LmkVQ0OqGPi3t1uWTlccQ', '6687eef7-bf17-430f-b080-03b24013a524', false, '2024-05-28 08:14:02.002846+00', '2024-05-28 08:14:02.002846+00', 'og15VQAoR-qKEHfaoQmFPA', '0b4660d2-97df-4fd2-ab1e-024f9fba90fc'),
	('00000000-0000-0000-0000-000000000000', 30, 'iNLKY003eeiqbYRRoRZWtg', 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', true, '2024-05-27 18:58:21.825322+00', '2024-05-28 14:43:55.816299+00', NULL, '12bef701-f4c1-4ead-8271-54ef66cc83ce'),
	('00000000-0000-0000-0000-000000000000', 32, 'KmsmzaHjsfagGgd-RTF2OA', 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', true, '2024-05-28 14:43:55.816926+00', '2024-05-28 19:23:30.030291+00', 'iNLKY003eeiqbYRRoRZWtg', '12bef701-f4c1-4ead-8271-54ef66cc83ce'),
	('00000000-0000-0000-0000-000000000000', 33, 'h1P3J0IdAC-tEngtRYKjkw', 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', true, '2024-05-28 19:23:30.031383+00', '2024-05-29 07:23:38.336425+00', 'KmsmzaHjsfagGgd-RTF2OA', '12bef701-f4c1-4ead-8271-54ef66cc83ce'),
	('00000000-0000-0000-0000-000000000000', 34, 'OuQPdZAVStlBVhlr2lZgrQ', 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', false, '2024-05-29 07:23:38.337139+00', '2024-05-29 07:23:38.337139+00', 'h1P3J0IdAC-tEngtRYKjkw', '12bef701-f4c1-4ead-8271-54ef66cc83ce');


--
-- Data for Name: sso_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_providers; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: saml_relay_states; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: sso_domains; Type: TABLE DATA; Schema: auth; Owner: supabase_auth_admin
--



--
-- Data for Name: key; Type: TABLE DATA; Schema: pgsodium; Owner: supabase_admin
--



--
-- Data for Name: profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."profiles" ("id", "instance_id", "created_at", "first_name", "last_name", "phone_number", "username") VALUES
	('c1aafe82-8526-4b05-917d-311bbf8b2bd7', 2, '2024-05-28 15:11:53.270821+00', 'test 2', 'test 2', 'test', 'test2'),
	('6687eef7-bf17-430f-b080-03b24013a524', 1, '2024-05-27 16:00:38.544268+00', 'kristoffer', 'gonzaga', 'test', 'kristoff95');


--
-- Data for Name: carts; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: stores; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."stores" ("id", "instance_id", "name", "address", "created_at") VALUES
	('87e9903a-70d5-4eae-9bfa-c8a4375eb4d3', 2, 'store 2', 'store 2 address', '2024-05-28 18:08:31.672517+00'),
	('2fcf6d69-84d8-4e0f-8000-48d92b151618', 3, 'store 3', 'store 3', '2024-05-28 18:09:05.971749+00'),
	('e59df7d0-d46d-4a25-96d9-ca7a6fc8aa3b', 1, 'Store 1', 'Anywhere', '2024-05-27 17:53:03.183165+00');


--
-- Data for Name: products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: cart_products; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: product_prices; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."roles" ("id", "instance_id", "created_at", "role") VALUES
	('49614dc6-1017-4f5a-9c16-8faa44be35e1', 1, '2024-05-27 18:17:37.972018+00', 'store_owner'),
	('1efbd098-e9cc-42c8-8bf7-e36db6032c85', 2, '2024-05-27 18:17:43.339583+00', 'store_admin'),
	('86d82cac-9648-43a8-9d6f-c075086256ac', 3, '2024-05-27 18:17:49.251842+00', 'store_cashier'),
	('f2f893bf-18ff-4cfc-a3fa-fea748414efb', 4, '2024-05-27 18:17:53.477063+00', 'customer');


--
-- Data for Name: store_profiles; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO "public"."store_profiles" ("id", "instance_id", "profile_id", "store_id", "created_at", "role_id") VALUES
	('73462be2-f38d-48ed-9d01-05b579bc511a', 2, '6687eef7-bf17-430f-b080-03b24013a524', 'e59df7d0-d46d-4a25-96d9-ca7a6fc8aa3b', '2024-05-27 18:19:15.474375+00', '49614dc6-1017-4f5a-9c16-8faa44be35e1'),
	('977e153c-3bf4-4bfa-9e3b-1d3368c951f1', 3, 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', '87e9903a-70d5-4eae-9bfa-c8a4375eb4d3', '2024-05-28 18:23:07.225597+00', '49614dc6-1017-4f5a-9c16-8faa44be35e1'),
	('f03507a3-e743-491e-bd6b-3de40fee667b', 4, 'c1aafe82-8526-4b05-917d-311bbf8b2bd7', '2fcf6d69-84d8-4e0f-8000-48d92b151618', '2024-05-28 18:23:28.369826+00', '49614dc6-1017-4f5a-9c16-8faa44be35e1'),
	('c6439d94-e669-4d00-baa8-6648a4008ced', 5, '6687eef7-bf17-430f-b080-03b24013a524', '2fcf6d69-84d8-4e0f-8000-48d92b151618', '2024-05-28 21:03:14.827864+00', '49614dc6-1017-4f5a-9c16-8faa44be35e1');


--
-- Data for Name: buckets; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: objects; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: s3_multipart_uploads_parts; Type: TABLE DATA; Schema: storage; Owner: supabase_storage_admin
--



--
-- Data for Name: hooks; Type: TABLE DATA; Schema: supabase_functions; Owner: supabase_functions_admin
--



--
-- Data for Name: secrets; Type: TABLE DATA; Schema: vault; Owner: supabase_admin
--



--
-- Name: refresh_tokens_id_seq; Type: SEQUENCE SET; Schema: auth; Owner: supabase_auth_admin
--

SELECT pg_catalog.setval('"auth"."refresh_tokens_id_seq"', 34, true);


--
-- Name: key_key_id_seq; Type: SEQUENCE SET; Schema: pgsodium; Owner: supabase_admin
--

SELECT pg_catalog.setval('"pgsodium"."key_key_id_seq"', 1, false);


--
-- Name: cart_products_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."cart_products_instance_id_seq"', 1, false);


--
-- Name: orders_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."orders_instance_id_seq"', 1, false);


--
-- Name: product_prices_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."product_prices_instance_id_seq"', 1, false);


--
-- Name: products_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."products_instance_id_seq"', 2, true);


--
-- Name: profiles_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."profiles_instance_id_seq"', 2, true);


--
-- Name: store_profile_roles_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."store_profile_roles_instance_id_seq"', 4, true);


--
-- Name: store_profiles_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."store_profiles_instance_id_seq"', 5, true);


--
-- Name: stores_instance_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"public"."stores_instance_id_seq"', 3, true);


--
-- Name: hooks_id_seq; Type: SEQUENCE SET; Schema: supabase_functions; Owner: supabase_functions_admin
--

SELECT pg_catalog.setval('"supabase_functions"."hooks_id_seq"', 1, false);


--
-- PostgreSQL database dump complete
--

RESET ALL;
