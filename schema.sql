-- ============================================
-- StockMédical : schéma de base de données (VERSION CORRIGÉE)
-- Ce script peut être relancé autant de fois que vous voulez SANS erreur.
-- À exécuter dans Supabase → SQL Editor → New query → Run
-- ============================================

-- 1) Suppression propre de l'ancienne version (si elle existe)
drop policy if exists "auth_read_products" on products;
drop policy if exists "auth_write_products" on products;
drop policy if exists "auth_read_movements" on movements;
drop policy if exists "auth_write_movements" on movements;
drop policy if exists "auth_read_settings" on settings;
drop policy if exists "auth_write_settings" on settings;
drop table if exists movements;
drop table if exists products;
drop table if exists settings;

-- 2) Création des tables
create table products (
  id bigint generated always as identity primary key,
  name text not null,
  reference text not null,
  category text default '',
  quantity integer not null default 0 check (quantity >= 0),
  threshold integer not null default 10 check (threshold >= 0),
  created_at timestamptz not null default now()
);

create table movements (
  id bigint generated always as identity primary key,
  product_id bigint references products(id) on delete cascade,
  user_email text not null,
  delta integer not null,
  type text not null,
  note text default '',
  created_at timestamptz not null default now()
);

create table settings (
  key text primary key,
  value text not null
);

-- 3) Sécurité : seuls les utilisateurs connectés peuvent lire/écrire
alter table products enable row level security;
alter table movements enable row level security;
alter table settings enable row level security;

create policy "auth_read_products" on products for select to authenticated using (true);
create policy "auth_write_products" on products for all to authenticated using (true) with check (true);
create policy "auth_read_movements" on movements for select to authenticated using (true);
create policy "auth_write_movements" on movements for all to authenticated using (true) with check (true);
create policy "auth_read_settings" on settings for select to authenticated using (true);
create policy "auth_write_settings" on settings for all to authenticated using (true) with check (true);
