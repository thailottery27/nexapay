-- Run this once in Supabase -> SQL Editor -> New Query
create table if not exists public.platform_config (
  id text primary key,
  config jsonb not null,
  updated_at timestamptz default now()
);

create table if not exists public.deposit_requests (
  id text primary key,
  method text not null,
  amount numeric not null,
  ref text,
  screenshot_url text,
  status text default 'PENDING',
  created_at timestamptz default now()
);

create table if not exists public.kyc_submissions (
  id text primary key,
  full_name text,
  nid_number text,
  dob text,
  front_photo_url text,
  back_photo_url text,
  selfie_photo_url text,
  status text default 'NOT_SUBMITTED',
  updated_at timestamptz default now()
);

alter table public.platform_config enable row level security;
alter table public.deposit_requests enable row level security;
alter table public.kyc_submissions enable row level security;

drop policy if exists "Allow all platform_config" on public.platform_config;
create policy "Allow all platform_config" on public.platform_config for all using (true) with check (true);

drop policy if exists "Allow all deposit_requests" on public.deposit_requests;
create policy "Allow all deposit_requests" on public.deposit_requests for all using (true) with check (true);

drop policy if exists "Allow all kyc_submissions" on public.kyc_submissions;
create policy "Allow all kyc_submissions" on public.kyc_submissions for all using (true) with check (true);
