import { StoreDataTable } from '@/components/dashboard/stores/param/store-data-table';
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';

function StorePage({
  params,
}: {
  params: {
    store: string; // storeID
  };
}) {
  return (
    <div className=' rounded-2xl'>
      <Card>
        <CardHeader>
          <CardTitle>Store Products</CardTitle>
          <CardDescription>
            Manage your products and view their sales performance.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <StoreDataTable />
        </CardContent>
      </Card>
    </div>
  );
}

export default StorePage;
