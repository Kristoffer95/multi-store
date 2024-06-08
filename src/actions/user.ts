'use server';

import { createClient } from '@/utils/supabase/server';

export async function getUserAction() {
  const supabase = createClient();

  const { data, error } = await supabase.auth.getUser();

  if (error || !data?.user) return null;

  return data.user;
}
