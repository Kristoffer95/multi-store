import { StoreDataTable } from '@/components/stores/store/store-data-table';

function StorePage({
  params,
}: {
  params: {
    store: string; // storeID
  };
}) {
  return (
    <div className='bg-card px-10 py-10 rounded-2xl'>
      <StoreDataTable />
    </div>
  );
}

export default StorePage;
