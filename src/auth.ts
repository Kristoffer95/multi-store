import NextAuth from 'next-auth';
import { PrismaAdapter } from '@auth/prisma-adapter';
import { PrismaClient } from '@prisma/client';
// providers
import GitHub from 'next-auth/providers/github';

const prisma = new PrismaClient();

export const { handlers, signIn, signOut, auth } = NextAuth({
  adapter: PrismaAdapter(prisma),
  secret: process.env.AUTH_SECRET,
  session: {
    strategy: 'jwt',
  },
  providers: [GitHub],
  callbacks: {
    // NOTE: to customize redirect
    // redirect(params) {
    //   return '/';
    // },
    authorized({ request, auth }) {
      return true;
    },
    // session data
    async session({ session, token }) {
      const userId = token.sub as string;
      session.user.id = userId;
      return session;
    },
    // jwt data (can transform the jwt here)
    async jwt({ token, user }) {
      return token;

      // example: add isAdmin to the token
      // return {
      //   isAdmin: true
      //   ...token,
      // };
    },
  },
});
