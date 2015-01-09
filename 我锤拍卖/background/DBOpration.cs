using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace HammerAuction.background
{
    public class DBOpration
    {
        private string sql;
        private SqlConnection sqlConnection;
        private SqlDataAdapter dataAdapter;
        private SqlCommand sqlCommand;
        private DataSet DS;

        public DBOpration()
        {
            sqlConnection = new SqlConnection();
            sqlConnection.ConnectionString = @"Data Source = GREENSHADOW-PC\SQLEXPRESS; Initial Catalog = AuctionSystem; Integrated Security = True";
            sqlConnection.Open();
            DS = new DataSet();
        }

        public void closeConnection()
        {
            sqlConnection.Close();
        }

        public DataSet getGoodsDetails(int id)
        {
            sql = String.Format("SELECT * FROM Goods WHERE t_goods_id = {0}", id);
            dataAdapter = new SqlDataAdapter(sql, sqlConnection);
            dataAdapter.Fill(DS, "Details");

            if (DS.Tables["Details"].Rows.Count == 0)
            { throw new DataNotFoundException(DataNotFoundException.Constant.TABLE_GOODS); }

            return DS;
        }

        public int getGoodsTableCount()
        {
            sql = "SELECT COUNT(*) FROM Goods";
            sqlCommand = new SqlCommand(sql, sqlConnection);
            int count = Convert.ToInt32(sqlCommand.ExecuteScalar().ToString());
            return count;
        }

        public DataSet getUsersCommit(string userMail)
        {
            sql = String.Format("SELECT t_goods_id, t_goods_name, t_goods_photo FROM Goods WHERE t_goods_usr_name = '{0}'", userMail);
            dataAdapter = new SqlDataAdapter(sql, sqlConnection);
            dataAdapter.Fill(DS, "Details");

            if (DS.Tables["Details"].Rows.Count == 0)
            { throw new DataNotFoundException(DataNotFoundException.Constant.TABLE_ORDERS); }

            return DS;
        }

        public DataSet getOrders(string number)
        {
            sql = String.Format("SELECT * FROM Orders WHERE t_orders_number = {0}", number);
            dataAdapter = new SqlDataAdapter(sql, sqlConnection);
            dataAdapter.Fill(DS, "Details");

            if (DS.Tables["Details"].Rows.Count == 0)
            { throw new DataNotFoundException(DataNotFoundException.Constant.TABLE_ORDERS); }

            return DS;
        }

        public DataSet getUsers(string mail)
        {
            sql = String.Format("SELECT * FROM Users WHERE t_usr_mail = '{0}'", mail);
            dataAdapter = new SqlDataAdapter(sql, sqlConnection);
            dataAdapter.Fill(DS, "Details");

            if (DS.Tables["Details"].Rows.Count == 0)
            { throw new DataNotFoundException(DataNotFoundException.Constant.TABLE_USERS); }

            return DS;
        }

        public string getNickName(string mail)
        {
            DS = this.getUsers(mail);
            return DS.Tables["Details"].Rows[0][2].ToString();
        }

        public bool insertGoods(string name, string fullPath, string details, string tags, string startPrice, string lowestFare, string userMail)
        {
            sql = String.Format("INSERT INTO Goods(t_goods_name, t_goods_photo, t_goods_details, t_goods_tags, t_goods_start_price, t_goods_lowest_fare, t_goods_date, t_goods_usr_name) VALUES('{0}', '{1}', '{2}', '{3}', '{4}', '{5}', getdate(), '{6}')",
                name, fullPath, details, tags, startPrice, lowestFare, userMail);
            sqlCommand = new SqlCommand(sql, sqlConnection);
            if (sqlCommand.ExecuteNonQuery() != 1)
                return false;
            return true;
        }

        public bool SignUp(string mail, string passwd, string nickname)
        {
            sql = String.Format("INSERT INTO Users(t_usr_mail, t_usr_passwd, t_usr_nickname, t_usr_property, t_usr_verfied, t_usr_credit) VALUES('{0}', '{1}', '{2}', '0', '0', '3')", mail, passwd, nickname);
            sqlCommand = new SqlCommand(sql, sqlConnection);
            if (sqlCommand.ExecuteNonQuery() != 1)
                return false;
            return true;
        }

        public bool Login(string mail, string passwd)
        {
            sql = String.Format("SELECT COUNT(*) FROM Users WHERE t_usr_mail = '{0}' AND t_usr_passwd = '{1}'", mail, passwd);
            sqlCommand = new SqlCommand(sql, sqlConnection);
            if (!sqlCommand.ExecuteScalar().ToString().Equals("1"))
                return false;
            return true;
        }
    }
}