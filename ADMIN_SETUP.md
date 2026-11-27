# Secure Admin Setup (Supabase)

The static GitHub Pages site cannot securely run a server or database itself. This dashboard uses Supabase Auth and a database with row-level security.

1. Create a Supabase project at https://supabase.com/.
2. In SQL Editor, run the SQL in `setup.sql`.
3. In Authentication > Users, create your admin user with your email and a strong password.
4. In Authentication settings, disable public sign-ups (admin users should be provisioned by you).
5. From Project Settings > API, copy Project URL and the public anon/publishable key (never the service-role key).
6. Edit `supabase-config.js` and replace the two YOUR_ placeholders.
7. Commit changes to GitHub; GitHub Pages will publish the files.
8. Open https://surendratiwari599-beep.github.io/surendra-websites/admin.html and sign in with the user you created.

Note: This initial scaffold permits any authenticated Supabase user to access the leads table. Keep public sign-ups disabled and only create trusted users. Do not publish personal customer data to public repositories.