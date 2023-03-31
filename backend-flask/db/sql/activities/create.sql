INSERT INTO public.activities (
  user_uuid,
  message,
  expires_at
)
VALUES (
  (SELECT uuid 
    FROM public.users 
    LIMIT 1
  ),
  %(message)s,
  %(expires_at)s
) RETURNING uuid;