import { auth } from '@/auth';

async function DashboardPage() {
  const session = await auth();

  return (
    <div className='py-16'>
      <h1 className='text-2xl tracking-tight font-semibold font-mono'>
        Graphs must show here
      </h1>

      <pre>{JSON.stringify(session, null, 2)}</pre>
    </div>
  );
}

export default DashboardPage;
