import { createClient } from '@/utils/supabase/server';
import React from 'react';

async function TestPage() {
  const supabase = createClient();

  const { data, error } = await supabase.from('profiles').select();
  // const { data, error } = await supabase.from('store_profiles').select(
  //   `
  //   id,
  //   instance_id,
  //   created_at,
  //   profiles(*),
  //   stores(*),
  //   roles(*)
  //   `
  // );

  return (
    <div className='container'>
      <pre>{JSON.stringify(data, null, 2)}</pre>
    </div>
  );
}

export default TestPage;
