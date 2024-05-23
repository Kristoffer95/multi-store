'use client';

import { zodResolver } from '@hookform/resolvers/zod';
import { useForm } from 'react-hook-form';
import { z } from 'zod';
import { isMobilePhone } from 'validator';

import { Button } from '@/components/ui/button';
import {
  Form,
  FormControl,
  FormDescription,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from '@/components/ui/form';
import { Input } from '@/components/ui/input';
import { navigate } from './action';

const formSchema = z.object({
  username: z.string().min(3, {
    message: 'Username must be at least 3 characters.',
  }),
  phoneNumber: z.string().refine(isMobilePhone, {
    message: 'Invalid phone number.',
  }),
  homeAddress: z.string().min(1, {
    message: 'Username is requied.',
  }),
  storeName: z.string().min(1, {
    message: 'Username is requied.',
  }),
  storeAddress: z.string().min(1, {
    message: 'Username is requied.',
  }),
});

export default function RegisterForm() {
  const form = useForm<z.infer<typeof formSchema>>({
    resolver: zodResolver(formSchema),
    defaultValues: {
      username: 'username',
      phoneNumber: '1234567',
      homeAddress: 'sdfsf',
      storeName: 'fsfsf',
      storeAddress: 'ssfsfd',
    },
  });

  function onSubmit(values: z.infer<typeof formSchema>) {
    console.log(values);
    navigate(values);
  }

  return (
    <div className='max-w-[500px] w-full px-10 py-16 rounded-2xl bg-background border'>
      <h1 className='text-center pb-10 text-3xl font-medium uppercase tracking-wide'>
        Create Store
      </h1>

      <Form {...form}>
        <form onSubmit={form.handleSubmit(onSubmit)} className='space-y-8'>
          <div className='flex gap-5'>
            <FormField
              control={form.control}
              name='username'
              render={({ field }) => (
                <FormItem className='flex-1'>
                  <FormLabel>Username</FormLabel>
                  <FormControl>
                    <Input placeholder='@username' {...field} />
                  </FormControl>
                  <FormDescription>
                    This must be unique and at least 5 characters long.
                  </FormDescription>
                  <FormMessage />
                </FormItem>
              )}
            />

            <FormField
              control={form.control}
              name='phoneNumber'
              render={({ field }) => (
                <FormItem className='flex-1'>
                  <FormLabel>Phone number</FormLabel>
                  <FormControl>
                    <Input placeholder='phone number' {...field} />
                  </FormControl>
                  <FormMessage />
                </FormItem>
              )}
            />
          </div>

          <FormField
            control={form.control}
            name='homeAddress'
            render={({ field }) => (
              <FormItem>
                <FormLabel>Home address</FormLabel>
                <FormControl>
                  <Input placeholder='home address' {...field} />
                </FormControl>
                <FormMessage />
              </FormItem>
            )}
          />

          <hr />

          <FormField
            control={form.control}
            name='storeName'
            render={({ field }) => (
              <FormItem>
                <FormLabel>Store name</FormLabel>
                <FormControl>
                  <Input placeholder='store name' {...field} />
                </FormControl>
                <FormMessage />
              </FormItem>
            )}
          />

          <FormField
            control={form.control}
            name='storeAddress'
            render={({ field }) => (
              <FormItem>
                <FormLabel>Store address</FormLabel>
                <FormControl>
                  <Input placeholder='store address' {...field} />
                </FormControl>
                <FormMessage />
              </FormItem>
            )}
          />
          <Button type='submit'>Create</Button>
        </form>
      </Form>
    </div>
  );
}
