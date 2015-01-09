using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HammerAuction.background
{
    public class DataNotFoundException : Exception
    {
        public static class Constant
        {
            public const int TABLE_GOODS = 1;
            public const int TABLE_ORDERS = 2;
            public const int TABLE_USERS = 3;
        }

        public DataNotFoundException(int witchTable)
        {
            switch (witchTable)
            {

            }
        }
    }
}