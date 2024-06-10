'use server';

// import { createClient } from '@/utils/supabase/server';

import type { User } from '@prisma/client';

export async function getStores() {
  // const supabase = createClient();
  // const { data, error } = await supabase
  //   .from('stores')
  //   .select()
  //   .order('instance_id', {
  //     ascending: true,
  //   });
  // if (error || !data) return null;
  // return data;
}

export async function getStoreByIdAction(id: string) {
  // const supabase = createClient();
  // const { data, error } = await supabase
  //   .from('stores')
  //   .select(
  //     `
  //       *,
  //       products (
  //         *
  //       )
  //     `
  //   )
  //   .eq('id', id)
  //   .maybeSingle();
  // if (error || !data) return null;
  // return data;
}
