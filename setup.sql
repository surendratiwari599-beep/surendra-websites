-- Surendra Digital Solutions leads table (run in Supabase SQL Editor)
create table if not exists public.leads (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  phone text,
  email text,
  status text not null default 'New' check (status in ('New','Interested','Follow-up','Converted','Not Interested')),
  source text,
  notes text,
  created_at timestamptz not null default now()
);
alter table public.leads enable row level security;
-- Restrict table access to authenticated users only. Supabase Auth signup should be disabled after creating your admin account.
create policy "authenticated users can read leads" on public.leads for select to authenticated using (true);
create policy "authenticated users can insert leads" on public.leads for insert to authenticated with check (true);
create policy "authenticated users can update leads" on public.leads for update to authenticated using (true) with check (true);
create policy "authenticated users can delete leads" on public.leads for delete to authenticated using (true);
