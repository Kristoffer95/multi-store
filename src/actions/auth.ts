'use server';
import { createClient } from '@/utils/supabase/server';

export async function signOut() {
  const supabase = createClient();

  await supabase.auth.signOut();
}
