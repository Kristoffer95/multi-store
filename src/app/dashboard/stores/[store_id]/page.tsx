import { getStoreByIdAction } from '@/actions/store';
import { columns } from '@/components/dashboard/stores/param/columns';
import { StoreTable } from '@/components/dashboard/stores/param/store-table';
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';

async function StorePage({
  params,
}: {
  params: {
    store_id: string;
  };
}) {
  const store = await getStoreByIdAction(params.store_id);

  console.log(store);

  return (
    <div className=' rounded-2xl'>
      <Card>
        <CardHeader>
          <CardTitle>{store?.name}</CardTitle>
          <CardDescription>
            Manage your products and view their sales performance.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <StoreTable columns={columns} products={store?.products || null} />
        </CardContent>
      </Card>
    </div>
  );
}

export default StorePage;
