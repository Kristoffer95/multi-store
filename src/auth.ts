import NextAuth, { type NextAuthConfig } from 'next-auth';

import { PrismaAdapter } from '@auth/prisma-adapter';
import { PrismaClient } from '@prisma/client';
import type { Provider } from 'next-auth/providers';

// providers
import Github, { type GitHubProfile } from 'next-auth/providers/github';
import Credentials from 'next-auth/providers/credentials';

const prisma = new PrismaClient();

const providers: Provider[] = [
  Github,
  // Github({
  //   clientId: process.env.AUTH_GITHUB_ID as string,
  //   clientSecret: process.env.AUTH_GITHUB_SECRET as string,
  //   profile: (profile: GitHubProfile) => {
  //     return {
  //       id: profile.id.toString(),
  //       email: profile.email,
  //       first_name: profile.name,
  //     };
  //   },
  // }),
  Credentials({
    credentials: {
      email: { label: 'Email', type: 'email' },
      password: { label: 'Password', type: 'password' },
    },
    authorize: async (creds) => {
      const { email, password } = creds;

      const user = await prisma.user.findUnique({
        where: {
          email: email as string,
          password: password as string,
        },
      });

      if (!user) return null;

      return user;
    },
  }),
];

export const { handlers, auth, signIn, signOut } = NextAuth({
  adapter: PrismaAdapter(prisma),
  secret: process.env.AUTH_SECRET,
  session: {
    strategy: 'jwt',
  },
  providers,
  callbacks: {
    authorized({ request, auth }) {
      return true;
    },
    // session data
    async session({ session, token, user }) {
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
