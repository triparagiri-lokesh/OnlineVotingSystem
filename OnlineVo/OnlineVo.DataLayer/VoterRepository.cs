using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using OnlineVo.Entities;


namespace OnlineVo.DataLayer
{
    public class VoterRepository
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["Onlinevotingconn"].ConnectionString);
        SqlCommand command = null;
        SqlDataReader reader = null;
        DataSet dataset = null;
        public void AddVoter(Voter voter)
        {
            try
            {
                command = new SqlCommand($"insert into Voter values({voter.voterId},'{voter.voterName}','{voter.fatherName}','{voter.gender}','{voter.dob}','{voter.email}','{voter.mobileno}','{voter.voterPassword}')", connection);
                connection.Open();
                command.ExecuteNonQuery();

            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                connection.Close();
            }
        }
        public List<Voter> GetAllVoters()
        {
            try
            {


                List<Voter> voters = new List<Voter>();
                command = new SqlCommand($"Select * from Voter", connection);
                connection.Open();
                SqlDataReader dr = command.ExecuteReader();
                while (dr.Read())
                {
                    Voter voter = new Voter();
                    voter.voterId = (int)dr["VoterId"];
                    voter.voterName = dr["VoterName"].ToString();
                    voter.fatherName = dr["FatherName"].ToString();
                    voter.gender = dr["Gender"].ToString();
                    voter.dob = dr["Dob"].ToString();
                    voter.email = dr["Email"].ToString();
                    voter.mobileno = dr["Mobileno"].ToString();
                    

                    voter.voterPassword = dr["VoterPassword"].ToString();

                    voters.Add(voter);
                }
                return voters;
            }
            catch (Exception)
            {
                throw;
            }


        }

    }
}
