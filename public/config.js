/* ============================================================
   config.js — Supabase project settings for Am.Sabari. VEGETABLES
   ============================================================
   Fill these in after creating the Supabase project (see README.md,
   step "Create the Supabase project"). Both values are meant to be
   public — the anon key is safe to ship in the browser because the
   database's Row Level Security (RLS) policies (supabase/schema.sql)
   are what actually decide who can read/write, not this key.

   LOGIN_EMAIL is NOT shown to the shop owner anywhere in the UI —
   he only ever types the PIN. It's just the "username" half of the
   one shared Supabase Auth account behind the PIN screen. It can be
   any syntactically valid email; it doesn't need to be real or
   receive mail. Create the matching user in the Supabase dashboard
   under Authentication → Users (see README.md).
   ============================================================ */

const SUPABASE_CONFIG = {
  url: 'https://rxbosecuqngxcgqyzubd.supabase.co',
  anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InJ4Ym9zZWN1cW5neGNncXl6dWJkIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODgzNTQxNDgsImV4cCI6MjEwMzkzMDE0OH0.e6sakKilEeLtS9w3GrxLrStTx1f2OP-epk7Wbj8QAVw',
  loginEmail: 'sabribills123@gmail.com'
};
