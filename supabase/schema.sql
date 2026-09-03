-- ============================================================
-- Am.Sabari. VEGETABLES — Supabase schema
-- Run this once in Supabase Dashboard → SQL Editor → New query.
-- Safe to re-run: every statement uses IF NOT EXISTS / ON CONFLICT.
-- ============================================================

-- ---------- shop_settings (single row, id = 1) ----------
create table if not exists shop_settings (
  id int primary key default 1,
  tagline text default '',
  name text not null default 'AM',
  name_mid text default 'SABARI',
  name_bottom text default 'VEGETABLES',
  sub text default 'Wholesale Suppliers',
  address text default 'U.M.C. Market, Ooty.',
  phone text default '9443861245',
  next_bill_no int not null default 10,
  updated_at timestamptz default now(),
  constraint shop_settings_singleton check (id = 1)
);

insert into shop_settings (id) values (1)
  on conflict (id) do nothing;

-- ---------- items (vegetable price list) ----------
create table if not exists items (
  id text primary key,
  name text not null,
  unit text not null default 'கிலோ',
  price numeric not null default 0
);

insert into items (id, name, unit, price) values
  ('it1',  'தேங்காய்',            'கிலோ', 63.00),
  ('it2',  'தக்காளி',              'எண்ணிக்கை', 730.00),
  ('it3',  'வெங்காயம்',            'கிலோ', 56.00),
  ('it4',  'உருளைக்கிழங்கு',       'கிலோ', 55.00),
  ('it5',  'கேரட்',                'கிலோ', 55.00),
  ('it6',  'பீன்ஸ்',               'கிலோ', 80.00),
  ('it7',  'காலிஃபிளவர்',          'கிலோ', 700.00),
  ('it8',  'முட்டைகோஸ்',           'கிலோ', 22.00),
  ('it9',  'கத்தரிக்காய்',         'கிலோ', 40.00),
  ('it10', 'வாழைக்காய்',           'கிலோ', 14.00),
  ('it12', 'பீர்க்கங்காய்',        'கிலோ', 65.00),
  ('it13', 'சுரக்காய்',            'கிலோ', 45.00),
  ('it14', 'பாவக்காய்',            'கிலோ', 65.00),
  ('it15', 'முள்ளங்கி',            'கிலோ', 35.00),
  ('it16', 'பூசணிக்காய்',          'கிலோ', 20.00),
  ('it17', 'கேப்சிகம்',            'கிலோ', 65.00),
  ('it18', 'வெள்ளரிக்காய்',        'கிலோ', 35.00),
  ('it19', 'கொத்தவரங்காய்',        'கிலோ', 50.00),
  ('it20', 'அவரைக்காய்',           'கிலோ', 65.00),
  ('it21', 'பச்சை மிளகாய்',        'கிலோ', 55.00),
  ('it22', 'கொத்தமல்லி',           'கட்டு', 20.00),
  ('it23', 'கறிவேப்பிலை',          'கட்டு', 7.00),
  ('it24', 'இஞ்சி',                'கிலோ', 90.00),
  ('it25', 'பூண்டு',               'கிலோ', 200.00),
  ('it26', 'சின்ன வெங்காயம்',      'கிலோ', 80.00),
  ('it27', 'ஊட்டி அவரை',           'கிலோ', 100.00),
  ('it28', 'டபுள் பீன்ஸ்',         'கிலோ', 65.00),
  ('it29', 'வெண்டைக்காய்',         'கிலோ', 40.00),
  ('it30', 'புடலங்காய்',           'கிலோ', 40.00),
  ('it31', 'கோவக்காய்',           'கிலோ', 50.00),
  ('it32', 'மரவள்ளிக்கிழங்கு',      'கிலோ', 30.00),
  ('it33', 'சக்கரவள்ளி கிழங்கு',   'கிலோ', 0.00),
  ('it34', 'பட்டாணி',              'கிலோ', 100.00),
  ('it35', 'கீரை',                 'கட்டு', 0.00),
  ('it36', 'செலரி',                'கட்டு', 0.00),
  ('it37', 'ஸ்பிரிங் ஆனியன்',      'கட்டு', 0.00),
  ('it38', 'லிப்ஸ்',                'கட்டு', 0.00),
  ('it39', 'வெள்ளை பூசணி',          'கிலோ', 25.00),
  ('it40', 'சாம்பார் வெள்ளரி',      'கிலோ', 25.00),
  ('it42', 'பயிறு',                'கிலோ', 45.00),
  ('it43', 'Lime',                 'கிலோ', 250.00),
  ('it44', 'Mursoom',               'கிலோ', 50.00),
  ('it45', 'முருங்கைக்காய்',        'கிலோ', 40.00),
  ('it46', 'பீட்ரூட்',              'கிலோ', 60.00),
  ('it47', 'பீட்ரூட்',              'கிலோ', 0.00),
  ('it48', 'புதினா',                'கட்டு', 0.00),
  ('it49', 'செ. அவரை',             'கட்டு', 0.00),
  ('it50', 'பூகோஸ்',               'கிலோ', 0.00),
  ('it51', 'இலை',                 'எண்ணிக்கை', 0.00),
  ('it52', 'கறி பின்ஸ்',            'கிலோ', 0.00),
  ('it53', 'நீ கத்திரிக்காய்',     'கிலோ', 0.00),
  ('it54', 'பஜ்ஜி மிளகாய்',        'கிலோ', 0.00),
  ('it55', 'மாங்காய்',              'கிலோ', 0.00)
on conflict (id) do nothing;

-- ---------- customers ----------
create table if not exists customers (
  id text primary key,
  name text not null,
  phone text default '',
  opening_balance numeric not null default 0,
  created_at timestamptz default now()
);

-- ---------- bills (one row per bill; line items kept as JSON,
--            matching the app's in-memory bill shape exactly) ----------
create table if not exists bills (
  id text primary key,
  bill_no int not null,
  customer_id text references customers(id) on delete set null,
  customer_name text,
  customer_phone text default '',
  date_iso date not null,
  time_display text,
  created_at_ms bigint not null,
  items_json jsonb not null default '[]',
  kooli numeric not null default 0,
  total numeric not null default 0,
  prev_balance numeric not null default 0,
  grand_total numeric not null default 0,
  paid_on_bill_date numeric not null default 0
);
create index if not exists bills_customer_idx on bills(customer_id);
create index if not exists bills_date_idx on bills(date_iso);

-- Migration for an already-deployed database (safe to run even if the
-- column already exists — this whole schema.sql can always be re-run).
alter table bills add column if not exists paid_on_bill_date numeric not null default 0;
alter table bills add column if not exists kooli numeric not null default 0;

-- ---------- payments ("ரூ. கொடுத்தது") ----------
create table if not exists payments (
  id text primary key,
  customer_id text references customers(id) on delete set null,
  date_iso date not null,
  amount numeric not null,
  note text default '',
  created_at_ms bigint not null
);
create index if not exists payments_customer_idx on payments(customer_id);
create index if not exists payments_date_idx on payments(date_iso);

-- ============================================================
-- Row Level Security
-- One shared shop login (the PIN screen signs in as a single
-- Supabase Auth user) — so every table just requires "you are
-- signed in", not per-row ownership.
-- ============================================================
alter table shop_settings enable row level security;
alter table items enable row level security;
alter table customers enable row level security;
alter table bills enable row level security;
alter table payments enable row level security;

drop policy if exists "shop_settings_auth_all" on shop_settings;
create policy "shop_settings_auth_all" on shop_settings
  for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

drop policy if exists "items_auth_all" on items;
create policy "items_auth_all" on items
  for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

drop policy if exists "customers_auth_all" on customers;
create policy "customers_auth_all" on customers
  for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

drop policy if exists "bills_auth_all" on bills;
create policy "bills_auth_all" on bills
  for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

drop policy if exists "payments_auth_all" on payments;
create policy "payments_auth_all" on payments
  for all using (auth.role() = 'authenticated') with check (auth.role() = 'authenticated');

-- ============================================================
-- After running this file, create the ONE shared login user:
-- Dashboard → Authentication → Users → Add user
--   Email:    sabribills123@gmail.com  (must match config.js loginEmail)
--   Password: <the shop PIN>
--   Auto Confirm User: ON
-- See README.md for the full setup walkthrough.
-- ============================================================
