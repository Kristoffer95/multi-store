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

const invoices = [
  {
    invoice: 'INV001',
    paymentStatus: 'Paid',
    totalAmount: '$250.00',
    paymentMethod: 'Credit Card',
  },
  {
    invoice: 'INV002',
    paymentStatus: 'Pending',
    totalAmount: '$150.00',
    paymentMethod: 'PayPal',
  },
  {
    invoice: 'INV003',
    paymentStatus: 'Unpaid',
    totalAmount: '$350.00',
    paymentMethod: 'Bank Transfer',
  },
  {
    invoice: 'INV004',
    paymentStatus: 'Paid',
    totalAmount: '$450.00',
    paymentMethod: 'Credit Card',
  },
  {
    invoice: 'INV005',
    paymentStatus: 'Paid',
    totalAmount: '$550.00',
    paymentMethod: 'PayPal',
  },
  {
    invoice: 'INV006',
    paymentStatus: 'Pending',
    totalAmount: '$200.00',
    paymentMethod: 'Bank Transfer',
  },
  {
    invoice: 'INV007',
    paymentStatus: 'Unpaid',
    totalAmount: '$300.00',
    paymentMethod: 'Credit Card',
  },
];

export default function StoresTable() {
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
          {invoices.map((invoice, index) => (
            <TableRow key={index}>
              <TableCell className='font-medium'>{index + 1}</TableCell>
              <TableCell className='flex items-center justify-between'>
                <Link
                  href={`/dashboard/stores/${index + 1}`}
                  className='hover:underline underline-offset-2'>
                  Store Name
                </Link>
              </TableCell>
              <TableCell className='text-center'>2</TableCell>
              <TableCell className='text-center'>5</TableCell>
              <TableCell className='text-right'>
                {invoice.totalAmount}
              </TableCell>
            </TableRow>
          ))}
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
