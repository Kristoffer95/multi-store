import { createClient as server } from '@/utils/supabase/server';
import { createClient as client } from '@/utils/supabase/client';

export function supabaseWrapper(mode: 'client' | 'server') {
  let supabase = null;

  if (mode === 'client') {
    supabase = client();
    return supabase;
  }

  return (supabase = server());
}
