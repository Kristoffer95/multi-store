import StoresTable from '@/components/dashboard/stores/stores-table';
import { Button } from '@/components/ui/button';
import { PlusCircle } from 'lucide-react';
import Link from 'next/link';

async function ProfilePage() {
  return (
    <>
      <div className='flex justify-end pb-4 py-4 sm:pt-0'>
        <Link href='/create-store'>
          <Button size='sm' className='h-7 gap-1'>
            <PlusCircle className='h-3.5 w-3.5' />
            <span className='sr-only sm:not-sr-only sm:whitespace-nowrap'>
              Add Store
            </span>
          </Button>
        </Link>
      </div>
      <StoresTable />
    </>
  );
}

export default ProfilePage;
