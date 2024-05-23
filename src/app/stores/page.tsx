import StoresTable from '@/components/stores/stores-table';
import { Button } from '@/components/ui/button';
import { Plus } from 'lucide-react';
import Link from 'next/link';

async function ProfilePage() {
  return (
    <div className='pt-[100px]'>
      <div className='container'>
        <h1 className='text-center text-2xl font-bold uppercase mb-7'>
          Stores
        </h1>

        <div
          className='max-w-[900px] rounded-xl mx-auto 
          border border-primary/30 px-10 py-5 bg-background'>
          <div className='flex justify-end'>
            <Link href='/create-store'>
              <Button className='flex gap-2'>
                <Plus className='mr-2 h-4 w-4' />
                New Store
              </Button>
            </Link>
          </div>
          <StoresTable />
        </div>
      </div>
    </div>
  );
}

export default ProfilePage;
