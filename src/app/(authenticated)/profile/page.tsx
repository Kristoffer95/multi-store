import { redirect } from 'next/navigation';

import { getUserAction } from '@/actions/user';

export default async function ProfilePage() {
  const user = await getUserAction();

  if (!user) {
    redirect('/login');
  }

  return <p>Hello {user.email}</p>;
}
