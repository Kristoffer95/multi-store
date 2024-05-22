import { auth } from '@/auth';

async function ProfilePage() {
  const session = await auth();

  return (
    <div>
      <h1>Profile Page</h1>

      <pre>{JSON.stringify(session, null, 2)}</pre>
    </div>
  );
}

export default ProfilePage;
