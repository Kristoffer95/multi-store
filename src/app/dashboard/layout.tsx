import { Dashboard } from '@/components/dashboard/dashboard';

export default function DashboardLayout({
  children, // will be a page or nested layout
}: {
  children: React.ReactNode;
}) {
  return (
    <section>
      {/* Include shared UI here e.g. a header or sidebar */}
      {/* <nav className=''>hey</nav> */}

      <Dashboard>{children}</Dashboard>
    </section>
  );
}
