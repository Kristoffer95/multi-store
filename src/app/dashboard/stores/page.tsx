import { getStores } from '@/actions/store';
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
          {/* <Button className='flex gap-2 h-8' size='sm'>
            <Plus className='mr-2 h-4 w-4' />
            New Store
          </Button> */}
        </Link>
      </div>
      <StoresTable />
    </>
  );
}

export default ProfilePage;
