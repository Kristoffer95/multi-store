'use server';

import { supabaseWrapper } from '@/utils/supabase/supabase-wrapper';

export async function getUser() {
  const supabase = supabaseWrapper('server');

  const { data, error } = await supabase.auth.getUser();

  if (error || !data?.user) return null;

  return data.user;
}
