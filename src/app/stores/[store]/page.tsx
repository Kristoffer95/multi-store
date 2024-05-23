import { StoreDataTable } from '@/components/stores/store/store-data-table';

function StorePage({
  params,
}: {
  params: {
    store: string; // storeID
  };
}) {
  return (
    <div className='container pt-[100px]'>
      {/* {params.store} */}
      {/* <h1 className='text-center'>Store Page</h1> */}

      <div className='bg-background px-10 py-10 rounded-2xl'>
        <StoreDataTable />
      </div>
    </div>
  );
}

export default StorePage;
