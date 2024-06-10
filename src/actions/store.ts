'use server';

import { prisma } from '@/utils/prisma';

// import { createClient } from '@/utils/supabase/server';

// import { type User } from '@prisma/client';

export async function getStoresAction() {
  try {
    const stores = await prisma.store.findMany();

    return stores;
  } catch (error) {
    throw new Error('Failed to fetch stores' + error);
  }
}

export async function getStoreByIdAction(id: string) {
  try {
    const store = await prisma.store.findUnique({
      where: {
        id,
      },
      include: {
        products: true,
      },
    });

    return store;
  } catch (error) {
    throw new Error('Failed to fetch store' + error);
  }
}
