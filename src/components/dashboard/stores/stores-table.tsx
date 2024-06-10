import {
  Table,
  TableBody,
  TableCaption,
  TableCell,
  TableFooter,
  TableHead,
  TableHeader,
  TableRow,
} from '@/components/ui/table';
import Link from 'next/link';
import {
  Card,
  CardDescription,
  CardHeader,
  CardTitle,
} from '@/components/ui/card';
import { getStores } from '@/actions/store';

async function StoresTable() {
  // const stores = await getStores();
  const stores = [];

  return (
    <Card className='p-4 pt-0'>
      <CardHeader>
        <CardTitle>Stores</CardTitle>
        <CardDescription>
          Lorem ipsum dolor sit amet consectetur adipisicing elit.
        </CardDescription>
      </CardHeader>

      <Table>
        <TableCaption>A list of your stores.</TableCaption>
        <TableHeader>
          <TableRow>
            <TableHead className='w-[100px]'>ID</TableHead>
            <TableHead>Name</TableHead>
            <TableHead className='text-center'>Pending Orders</TableHead>
            <TableHead className='text-center'>Successful Orders</TableHead>
            <TableHead className='text-right'>{`Today's Income`}</TableHead>
          </TableRow>
        </TableHeader>
        <TableBody>
          {stores && stores.length > 0 ? (
            stores.map((store, index) => (
              <TableRow key={index}>
                <TableCell className='font-medium'>{index + 1}</TableCell>
                <TableCell className='flex items-center justify-between'>
                  <Link
                    href={`/dashboard/stores/${store.id}`}
                    className='hover:underline underline-offset-2 capitalize'>
                    {store.name}
                  </Link>
                </TableCell>
                <TableCell className='text-center'>2</TableCell>
                <TableCell className='text-center'>5</TableCell>
                <TableCell className='text-right'>0</TableCell>
              </TableRow>
            ))
          ) : (
            <TableRow>
              <TableCell colSpan={5} className='text-center py-6'>
                No stores availalbe
              </TableCell>
            </TableRow>
          )}
        </TableBody>
        <TableFooter>
          <TableRow>
            <TableCell colSpan={4}>Total</TableCell>
            <TableCell className='text-right'>$2,500.00</TableCell>
          </TableRow>
        </TableFooter>
      </Table>
    </Card>
  );
}
export default StoresTable;
