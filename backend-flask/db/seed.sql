INSERT INTO public.users (display_name, email, handle, cognito_user_id)
VALUES
  ('Lachezar Gergov','lucho1899@yahoo.com','lucho88','MOCK'),
  ('Jessica Cahill','1899lucho@gmail.com','jess89','MOCK');


INSERT INTO public.activities (user_uuid, message, expires_at)
VALUES
  (
    (SELECT uuid from public.users WHERE users.handle = 'lucho88' LIMIT 1),
    'This was imported as seed data!',
    current_timestamp + interval '10 day'
  )